<template>
	<view class="container">
		<view class="header">
			<button type="default" plain class="service-btn">
				<image src="/static/images/order/order_icon_service.png" />
				<text>联系客服</text>
			</button>
		</view>
		<view class="content" v-if="Object.keys(order).length>0">
			<view class="order-box">
				<image src="/static/images/order/icon_making.png" class="status-icon" />
				<view class="text-color-primary font-size-lg font-weight-bold mb-10">订单已完成</view>
				<view class="text-color-assist font-size-sm">感谢您对五凤楼的支持，欢迎再次光临</view>
			</view>
			<view class="flex-fill overflow-auto">
				<view class="order-info">
					<list-cell padding="0 40rpx" line-right bgcolor="#f6f6f6">
						<view class="w-100 d-flex flex-column">
							<view class="d-flex align-items-center mt-40" v-for="(item, index) in order.orderDetailsList" :key="index">
								<view class="flex-fill d-flex flex-column">
									<view class="font-size-base mb-10">{{item.food.fname}}</view>
									<!-- <view class="font-size-extra-sm text-color-assist">
										{{ materialsText(item.materials) }}
									</view> -->
								</view>
								<view class="flex-shrink-0 font-weight-bold ml-40">x{{ item.amount }}</view>
								<view class="flex-shrink-0 font-weight-bold ml-40">￥{{ item.food.fprice}}</view>
							</view>
							<view class="d-flex justify-content-between align-items-center mt-40 pb-30 border-dashed">
								<view>商品总价</view>
								<view>￥{{ order.cost }}</view>
							</view>
							<view class="d-flex justify-content-between align-items-center font-size-lg font-weight-bold mt-30 mb-40">
								<view>合计</view>
								<view>￥{{ order.cost }}</view>
							</view>
						</view>
					</list-cell>
					<list-cell padding="30rpx 40rpx" last bgcolor="#f6f6f6" style="border-radius: 0 0 30rpx 30rpx;">
						<view class="w-100 d-flex flex-column font-size-extra-sm text-color-assist">
							<view class="mb-10">如需退款，请致电门店</view>
							<view class="mb-10">下单时间：{{ order.createdate }}</view>
							<!-- <view class="mb-10">取茶号：{{ order.pickup_no }}</view> -->
							<view class="mb-10">订单编号：{{ order.serialnum }}</view>
							<view class="mb-10">备注信息：{{ order.remark }}</view>
						</view>
					</list-cell>
				</view>
				<view class="order-invoice font-size-base d-flex justify-content-between align-items-center">
					<view>订单发票</view>
					<view class="text-color-primary d-flex align-items-center">
						<view>立即开票</view>
						<image src="/static/images/common/common_icon_jump_gold.png" class="jump-icon"></image>
					</view>
				</view>
			</view>
		</view>
	</view>
</template>

<script>
	import listCell from '@/components/list-cell/list-cell.vue'
	import {
		mapState,
		mapMutations
	} from 'vuex'
	export default {
		components: {
			listCell
		},
		data() {
			return {
				order: {}
			}
		},
		computed: {
			...mapState(['food']),
			materialsText() {
				return materials => {
					let arr = []
					materials.forEach(item => arr.push(item.name))
					return arr.join(',')
				}
			}
		},
		async onLoad(options) {
			/* 为了方便测试，这里使用同一个订单数据 */
			// this.order = await this.$api('orderDetail')
			this.order = this.food
			console.log(this.order)
		}
	}
</script>

<style lang="scss" scoped>
	.container {
		background-color: #EAEAEA;
		padding: 0 40rpx;
		display: flex;
		flex-direction: column;
	}

	.header {
		display: flex;
		justify-content: flex-end;
		align-items: center;
		padding: 20rpx 0;

		.service-btn {
			display: flex;
			align-items: center;
			justify-content: center;
			border-radius: 50rem !important;
			font-size: $font-size-sm;

			image {
				width: 30rpx;
				height: 30rpx;
				margin-right: 20rpx;
			}
		}
	}

	.content {
		flex: 1;
		display: flex;
		flex-direction: column;
		overflow: hidden;

		.order-box {
			z-index: 10;
			height: 25vh;
			border-radius: 30rpx 30rpx 0 0;
			box-shadow: 0 0 20rpx 0 rgba($color: #333, $alpha: 0.1);
			display: flex;
			flex-direction: column;
			justify-content: center;
			align-items: center;
			background-color: $bg-color-white;
			flex-shrink: 0;

			.status-icon {
				width: 100rpx;
				height: 100rpx;
				margin-bottom: 30rpx;
			}
		}
	}

	.phone-icon,
	.map-icon {
		width: 64rpx;
		height: 64rpx;
	}

	.phone-icon {
		margin-right: 40rpx;
	}

	.border-dashed {
		border-bottom: 1rpx dashed $border-color;
	}

	.order-info {
		border-radius: 0 0 30rpx 30rpx;
		box-shadow: 0 0 10rpx 0 rgba($color: #333, $alpha: 0.1);
		margin-bottom: 30rpx;
	}

	.order-invoice {
		padding: 30rpx 40rpx;
		border-radius: 30rpx;
		box-shadow: 0 0 10rpx 0 rgba($color: #333, $alpha: 0.1);
		margin-bottom: 60rpx;
		background-color: #F6F6F6;
	}

	.jump-icon {
		width: 24rpx;
		height: 48rpx;
		margin-left: 20rpx;
	}
</style>
