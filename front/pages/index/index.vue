<template>
	<view class="container">
		<view class="header">
			<view class="center">
				<view class="store">
					<view class="title">
						<image :src="orderType == 'takein' ? 
								'/static/images/common/star_normal.png' : 
								'/static/images/order/order_icon_address.png'"
						 class="left-icon" />
						<view class="address">五凤楼</view>
					</view>
					<!-- 外卖&自取switch begin -->
					<view class="buttons">
						<button type="default" class="button" :class="{active: orderType == 'takein'}" plain hover-class="none" @tap="switchOrderType">
							自取
						</button>
						<button type="default" class="button" :class="{active: orderType == 'takeout'}" plain hover-class="none" @tap="switchOrderType">
							配送
						</button>
					</view>
					<!-- 外卖&自取switch end -->
				</view>
				<view class="location">淡淡功名五凤楼</view>
			</view>
			<!-- 滚动公告栏 begin -->
			<view class="notices">
				<swiper class="swiper" autoplay vertical :interval="3000" :duration="1000" circular>
					<swiper-item v-for="(notice, index) in notices" :key="index">
						<view class="swiper-item">
							<image :src="notice.image" class="image"></image>
							<view class="content">{{ notice.content }}</view>
						</view>
					</swiper-item>
				</swiper>
			</view>
		</view>
		<!-- 滚动公告栏 end -->
		<view class="main">
			<!-- 左侧菜单 begin -->
			<scroll-view class="menu-bar" scroll-y scroll-with-animation>
				<view class="wrapper">
					<view class="menu-item" @tap="handleMenuSelected(category.firstType.ftid)" :class="{active: currentCategoryId == category.firstType.ftid}"
					 v-for="(category, index) in categories" :key="index">
						<!-- <image :src="category.category_image_url" class="image" mode="widthFix"></image> -->
						<view class="title">{{ category.firstType.ftname }}</view>
					</view>
				</view>
			</scroll-view>
			<!-- 左侧菜单 end -->
			<!-- 右侧商品列表 begin -->
			<scroll-view class="product-section" scroll-y scroll-with-animation :scroll-top="productsScrollTop" @scroll="productsScroll">
				<view class="wrapper">
					<!-- <view class="labels">
										<view class="label" 
										:style="{color: label.label_color, background: $util.hexToRgba(label.label_color, 0.2)}"
										 v-for="label in product.labels" :key="label.id">{{ label.name }}</view>
									</view> -->
					<!-- 商品 begin -->
					<view class="products-list" v-for="(category, index) in categories" :key="index" :id="`products-${category.firstType.ftid}`">
						<view class="category-name">{{ category.firstType.ftname }}</view>
						<view class="products">
							<view class="product" v-for="(product, key) in category.foods" :key="key" @tap="showProductDetailModal(product)">
								<!-- <image :src="product.images[0].url" mode="widthFix" class="image"></image> -->
								<view class="content">
									<view class="name">{{ product.fname }}</view>
									<view class="description">{{ product.fdesc }}</view>
									<view class="price">
										<view>￥{{ product.fprice }}</view>
										<actions :materials-btn="true" @materials="showProductDetailModal(product)" :number="productCartNum(product.fid)"
										 @add="handleAddToCart(product)" @minus="handleMinusFromCart(product)" />
									</view>
								</view>
							</view>
						</view>
					</view>
					<!-- 商品 end -->
				</view>
			</scroll-view>
			<!-- 右侧商品列表 end -->
		</view>
		<!-- 商品详情 modal begin -->
		<product-modal :product="product" :visible="productModalVisible" @cancel="closeProductDetailModal" @add-to-cart="handleAddToCartInModal" />
		<!-- 询问配送嘛 modal begin -->
		<Ask :visible="askVisible" @cancel="closeAskModal" />
		<!-- 商品详情 modal end -->
		<!-- 购物车栏 begin -->
		<cart-bar :cart="cart" @add="handleAddToCart" @minus="handleMinusFromCart" @clear="clearCart" @pay="pay" />
		<!-- 购物车栏 end -->
		<search :show="showSearch" :categories="categories" @hide="showSearch=false" @choose="showProductDetailModal"></search>
	</view>
</template>

<script>
	import {
		mapState,
		mapMutations
	} from 'vuex'
	import Actions from './components/actions/actions.vue'
	import CartBar from './components/cartbar/cartbar.vue'
	import ProductModal from './components/product-modal/product-modal.vue'
	import Ask from './components/product-modal/ask.vue'
	import cartPopup from './components/cart-popup/cart-popup.vue'
	import Search from './components/search/search.vue'

	export default {
		components: {
			Actions,
			CartBar,
			ProductModal,
			cartPopup,
			Search,
			Ask
		},
		data() {
			return {
				askVisible: false,
				categories: [],
				cart: [],
				product: {},
				currentCategoryId: 0,
				notices: [],
				productModalVisible: false,
				cartPopupShow: false,
				productsScrollTop: 0,
				showSearch: false
			}
		},
		computed: {
			...mapState(['orderType', 'address']),
			productCartNum() { //计算单个饮品添加到购物车的数量
				return id => this.cart.reduce((acc, cur) => {
					if (cur.fid === id) {
						return acc += cur.number
					}
					return acc
				}, 0)
			}
		},
		onLoad() {
			this.notices = this.$api('notices')
			// this.categories = await this.$api('categories')
			var that = this
			uni.request({
				url: 'http://localhost:8000/foodtype/getSecondTypedFood',
				success(res) {
					console.log(res)
					that.categories = res.data;
					that.currentCategoryId = that.categories.length && that.categories[0].firstType.ftid
					that.$nextTick(() => that.calcSize())
				}
			})
		},
		mounted() {

		},
		methods: {
			...mapMutations(['SET_ORDER_TYPE']),
			closeAskModal() {
				this.askVisible = false;
			},
			switchOrderType() {
				if (this.orderType === 'takein') {
					uni.navigateTo({
						url: '/pages/addresses/addresses'
					})
				} else {
					this.SET_ORDER_TYPE('takein')
				}
			},
			handleAddToCart(product) { //添加到购物车
				console.log(this.cart)
				console.log(product)
				const index = this.cart.findIndex(item => {
					return item.fid == product.fid
				})

				if (index > -1) {
					this.cart[index].number += (product.number || 1)
					return
				}

				this.cart.push({
					fid: product.fid,
					// cate_id: product.category_id,
					name: product.fname,
					price: product.fprice,
					number: product.number || 1,
					// image: product.images[0].url,
					is_single: true,
					materials_text: product.materials_text || ''
				})
			},
			handleMinusFromCart(product) { //从购物车减商品
				let index
				index = this.cart.findIndex(item => item.fid == product.fid)
				this.cart[index].number -= 1
				if (this.cart[index].number <= 0) {
					this.cart.splice(index, 1)
				}
			},
			showProductDetailModal(product) {
				this.product = product
				this.productModalVisible = true
			},
			handleAddToCartInModal(product) {
				this.handleAddToCart(product)
				this.closeProductDetailModal()
			},
			closeProductDetailModal() {
				this.productModalVisible = false
				this.product = {}
			},
			openCartDetailsPopup() {
				this.$refs['cartPopup'].open()
			},
			clearCart() {
				this.cart = []
			},
			handleMenuSelected(id) {
				this.productsScrollTop = this.categories.find(item => item.firstType.ftid == id).top
				this.$nextTick(() => this.currentCategoryId = id)
			},
			productsScroll({
				detail
			}) {
				const {
					scrollTop
				} = detail
				let tabs = this.categories.filter(item => item.top <= scrollTop).reverse()
				if (tabs.length > 0) {
					this.currentCategoryId = tabs[0].firstType.ftid
				}
			},
			calcSize() {
				let h = 0
				// let view = uni.createSelectorQuery().select('#ads')
				// view.fields({
				// 	size: true
				// }, data => {
				// 	h += Math.floor(data.height)
				// }).exec()

				this.categories.forEach(item => {
					let view = uni.createSelectorQuery().select(`#products-${item.firstType.ftid}`)
					view.fields({
						size: true
					}, data => {
						item.top = h
						h += Math.floor(data.height)
						item.bottom = h
					}).exec()
				})
				console.log(this.categories)
			},
			pay() {
				uni.setStorageSync('cart', this.cart)
				uni.navigateTo({
					url: '/pages/pay/pay'
				})
			}
		}
	}
</script>

<style lang="scss">
	@import './index.scss';
</style>
