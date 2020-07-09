<template>
	<modal :show="visible" custom padding="0" width="90%" radius="18rpx">
		<view class="header">
			<image src="/static/images/index/round_close_btn.png" @tap="$emit('cancel')"></image>
		</view>
		<view class="content">
			<!-- section-1 begin -->
			<view class="section-1">
				<navigator class="item" open-type="switchTab" url="/pages/index/index" hover-class="none">
					<image src="/static/images/home/home_icon_ziqu1.png" mode="widthFix"></image>
					<view class="wenyue-font">门店自取</view>
					<view class="text-color-assist">下单免排队</view>
				</navigator>
				<navigator class="item" open-type="navigate" url="/pages/addresses/addresses" hover-class="none">
					<image src="/static/images/home/home_icon_waimai1.png" mode="widthFix"></image>
					<view class="wenyue-font">店家配送</view>
					<view class="text-color-assist">无需接触 送喜到家</view>
				</navigator>
			</view>
		</view>
	</modal>
</template>

<script>
	import Modal from '@/components/modal/modal.vue'
	import Actions from '../actions/actions.vue'

	export default {
		name: 'ProductModal',
		components: {
			Modal,
			Actions
		},
		props: {
			visible: {
				type: Boolean,
				default: false
			},
			product: {
				type: Object,
				default: () => {}
			}
		},
		data() {
			return {
				productData: {}
			}
		},
		watch: {
			product(val) {
				this.productData = JSON.parse(JSON.stringify(val))
				this.$set(this.productData, 'number', 1)
			}
		},
		computed: {
			getProductSelectedMaterials() {
				if (!this.productData.is_single && this.productData.materials) {
					let materials = []
					this.productData.materials.forEach(({
						values
					}) => {
						values.forEach(value => {
							if (value.is_selected) {
								materials.push(value.name)
							}
						})
					})
					return materials.length ? materials.join('，') : ''
				}
				return ''
			}
		},
		methods: {
			changeMaterialSelected(index, key) {
				const currentMaterial = this.productData.materials[index].values[key]
				if (!currentMaterial.is_exclusive) {
					if (currentMaterial.is_selected) return
					this.productData.materials[index].values.forEach(value => this.$set(value, 'is_selected', 0))
					currentMaterial.is_selected = 1
					this.productData.number = 1
				} else {
					currentMaterial.is_selected = !currentMaterial.is_selected
					this.productData.number = 1
				}
			},
			add() {
				this.productData.number += 1
			},
			minus() {
				if (this.productData.number == 1) {
					return
				}
				this.productData.number -= 1
			},
			addToCart() {
				const product = { ...this.productData,
					'materials_text': this.getProductSelectedMaterials
				}
				this.$emit('add-to-cart', product)
			}
		}
	}
</script>

<style lang="scss" scoped>
	.header {
		padding: 20rpx 30rpx;
		position: absolute;
		top: 0;
		left: 0;
		right: 0;
		display: flex;
		justify-content: flex-end;
		z-index: 11;

		image {
			width: 60rpx;
			height: 60rpx;

			&:nth-child(1) {
				margin-right: 30rpx;
			}
		}
	}

	.swiper {
		height: 426rpx;
	}

	.content {
		display: flex;
		flex-direction: column;
		font-size: $font-size-sm;
		color: $text-color-assist;
		min-height: 1vh;
		max-height: calc(100vh - 100rpx - 426rpx - 250rpx);

		.wrapper {
			width: 100%;
			height: 100%;
			overflow: hidden;
			padding: 30rpx 30rpx 20rpx;
		}

		.materials {
			width: 80%;
			margin-bottom: 20rpx;

			.group-name {
				padding: 10rpx 0;
			}

			.values {
				display: flex;
				flex-wrap: wrap;
				overflow: hidden;

				.value {
					background-color: #f5f5f7;
					color: $font-size-base;
					padding: 10rpx 20rpx;
					overflow: hidden;
					text-overflow: ellipsis;
					white-space: nowrap;
					margin-right: 20rpx;
					margin-bottom: 20rpx;
					border-radius: $border-radius-lg;

					&.selected {
						background-color: $color-primary;
						color: $bg-color-white;
					}
				}
			}
		}
	}

	.bottom {
		padding: 20rpx 40rpx;
		display: flex;
		flex-direction: column;
		justify-content: space-between;
		border-top: 1rpx solid rgba($color: $border-color, $alpha: 0.3);
		background-color: $bg-color-white;
		position: relative;
		z-index: 11;

		.price-and-materials {
			flex: 1;
			display: flex;
			flex-direction: column;
			overflow: hidden;
			margin-right: 10rpx;

			.price {
				color: $color-primary;
				font-size: $font-size-extra-lg;
				font-weight: bold;
			}

			.materials {
				font-size: $font-size-sm;
				color: $text-color-assist;
				display: -webkit-box;
				-webkit-box-orient: vertical;
				-webkit-line-clamp: 2;
				overflow: hidden;
			}
		}

		.add-cart-btn {
			margin-top: 20rpx;
			font-size: $font-size-lg;
			border-radius: $border-radius-base;
		}
	}
	.section-1 {
		position: relative;
		background-color: $bg-color-white;
		margin-top: -60rpx;
		border-radius: $border-radius-lg;
		padding: 60rpx 0;
		display: flex;
		margin-bottom: 30rpx;
		box-shadow: $box-shadow;
		
		.item {
			flex: 1;
			flex-shrink: 0;
			display: flex;
			flex-direction: column;
			align-items: center;
			position: relative;
			
			&:nth-child(1):after {
				content: '';
				position: absolute;
				right: 0;
				top: 0;
				bottom: 0;
				width: 2rpx;
				background-color: $border-color;
			}
			
			image {
				width: 100rpx;
				margin-bottom: 20rpx;
			}
			
			.wenyue-font {
				font-size: 48rpx;
				margin-bottom: 10rpx;
			}	
		}
	}
</style>
