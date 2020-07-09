<template>
	<view class="container">
		<image class="w-100" src="https://go.cdn.heytea.com/storage/products/2019/12/18/01954797f3fb470cb6ba1606476c658c.png"
		 mode="widthFix"></image>
		<view class="content">
			<view class="welcome">
				<view><text style="font-size: 30px;">你好</text> 这里是五凤楼</view>
				<view class="font-size-base">丹丹百花烟雨后，淡淡功名五凤楼</view>
			</view>
			<!-- member card begin -->
			<view class="member-card">
				<view class="info">
					<view class="title">
						<view class="wenyue-font" v-if="type==1">会员</view>
						<view class="wenyue-font" v-if="type==0">普通用户</view>
						<view class="tips" @tap="openMember" v-if="type==0">
							<view>成为会员享多重福利</view>
							<image src="/static/images/my/icon_arrow.png"></image>
						</view>
					</view>
					<!-- <image @tap="info" src="https://wx.qlogo.cn/mmopen/vi_32/Hx7MFkCEmZVHziaTTiaHSiaCs4ApnH5CD0nYOhOg1nYUUMYtxMXkL6L4VL5icRfO5w4LGzW5ib0FZicwj2MficyYfZgCw/132" class="avatar"></image> -->
					<button v-if="!login&&!isLoginning" @tap="toLogin" style="margin-top: 20px;margin-bottom: 5px;background: #4CD964;color: white;">登录</button>
					<button v-if="isLoginning" style="margin-top: 20px;margin-bottom: 5px;background: #C8C7CC;color: white;">登录中...</button>
					<button v-if="login" style="margin-top: 20px;margin-bottom: 5px;background: #DBA871;color: white;" disabled="true">登录成功</button>
					<view class="badage">
						Lv1
					</view>
				</view>
				<view class="row">
					<view class="grid" open-type="navigate">
						<image src="/static/images/my/me_icon_points.png"></image>
						<view class="value">{{scores}}</view>
						<view class="title">积分</view>
					</view>
					<view class="grid" hover-class="opacity-6">
						<image src="/static/images/my/me_icon_quan.png"></image>
						<view class="value">0</view>
						<view class="title">优惠劵</view>
					</view>
					<navigator class="grid" open-type="navigate" url="/pages/my/wallet">
						<image src="/static/images/my/me_icon_wallet.png"></image>
						<view class="value">{{money}}</view>
						<view class="title">钱包</view>
					</navigator>
				</view>
			</view>
			<!-- member card end -->
			<!-- 任务中心 begin -->
			<view class="task-center" @tap="taskCenter">
				<view class="intro">
					<view class="title">积分商城</view>
					<view class="subtitle">SCORE CENTER</view>
				</view>
				<view class="image-wrapper">
					<image src="/static/images/my/b3d3a98e3c7f450aaa32fbec6aecdfaf.png"></image>
				</view>
			</view>
			<!-- 任务中心 end -->
		</view>
		<list-cell hover arrow>
			<view class="list-cell-wrapper">
				<view view="title">兑换中心</view>
				<view class="subtitle">兑换优惠券和各种福利</view>
			</view>
		</list-cell>
		<list-cell hover arrow>
			<view class="list-cell-wrapper">
				<view view="title">联系客服</view>
			</view>
		</list-cell>

		<view class="cu-modal" :class="modalName=='Image'?'show':''">
			<view class="cu-dialog">
				<!-- <view class="bg-img" style="background-image: url('https://ossweb-img.qq.com/images/lol/web201310/skin/big91012.jpg');height:200px;"> -->
				<view class="bg-img" style="height:150px;">
					<view class="cu-bar text-white"></view>
					<view class="grid col-1">
						<view class="cuIcon-search text-bold">申请获取以下权限</view>
						<view class="cuIcon-scan margin-top">获得你的公开信息(昵称，头像等)</view>
					</view>
				</view>
				<view class="cu-bar bg-white">
					<view class="action margin-0 flex-sub  solid-left" @tap="hideModal">
						<view>
							<button class='cu-btn bg-green' open-type="getUserInfo" bindgetuserinfo="bindGetUserInfo">
								授权登录
							</button>
						</view>
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
				boardcast: [],
				isLoginning: false,
				modalName: null
			}
		},
		computed: {
			...mapState(['wechatid', 'login', 'auth', 'money', 'scores', 'type', 'clientid']),
		},
		mounted() {
			let that = this
			wx.getSetting({
				success: function(res) {
					console.log(res)
					if (res.authSetting['scope.userInfo']) {
						that.AUTH()
					} else {
						that.modalName = "Image"
					}
				}
			})
			console.log(this.modalName)
		},
		async onLoad() {
			this.boardcast = await this.$api('boardcast')
		},
		methods: {
			...mapMutations(['LOGIN', 'AUTH']),
			toLogin() {
				let that = this
				this.isLoginning = true
				wx.getSetting({
					success: function(res) {
						if (res.authSetting['scope.userInfo']) {
							that.AUTH(true)
							wx.getUserInfo({
								success: function(userdata) {
									console.log(userdata)
									// let name = userdata.userInfo.nickName;
									wx.login({
										success(res) {
											if (res.code) {
												uni.request({
													data: {
														code: res.code
													},
													url: "http://localhost:8000/wechat/login",
													success(res) {
														console.log(res.data)
														console.log("用户的openid:");
														that.LOGIN(res.data)
														that.isLoginning = false
													}
												})
											}
										}
									})
								}
							});
						} else {
							wx.openSetting({
								success(res) {
									wx.getSetting({
										success(e) {
											console.log(e)
											if (res.authSetting['scope.userInfo']) {
												that.AUTH(true)
											}
											that.isLoginning = false
										}
									})
								}
							})
						}
					}
				})
			},
			info() {
				if(!this.login)return;
				uni.navigateTo({
					url: '/pages/my/info'
				})
			},
			taskCenter() {
				if(!this.login)return;
				uni.navigateTo({
					url: "/pages/integrals/mall"
				})
			},
			openMember() {
				if(!this.login)return;
				uni.navigateTo({
					url: '/pages/my/member'
				})
			},
			myCode() {
				if(!this.login)return;
				uni.navigateTo({
					url: '/pages/my/code'
				})
			},
			showModal(e) {
				this.modalName = e.currentTarget.dataset.target
			},
			hideModal(e) {
				this.modalName = null
			}
		}
	}
</script>

<style lang="scss" scoped>
	/* #ifdef H5 */
	page {
		height: auto;
		min-height: 100%;
	}

	/* #endif */

	.content {
		padding: 0 30rpx;
	}

	.welcome {
		position: relative;
		margin-top: -136rpx;
		display: flex;
		flex-direction: column;
		font-size: $font-size-lg;
		color: $text-color-warning;
	}

	.member-card {
		background-color: $bg-color-white;
		padding: 20rpx;
		display: flex;
		flex-direction: column;
		border-radius: $border-radius-base;
		margin-bottom: 40rpx;

		.info {
			position: relative;
			margin-top: -50rpx;
			display: flex;
			align-items: center;
			position: relative;
			padding: 20rpx 0;
			border-bottom: 1rpx solid rgba($color: $border-color, $alpha: 0.3);

			.title {
				flex: 1;
				font-size: 40rpx;
				color: $text-color-base;
				display: flex;
				align-items: center;

				.tips {
					margin-left: 10rpx;
					font-size: $font-size-sm;
					color: $text-color-assist;
					background-color: #e9e9e9;
					padding: 10rpx 30rpx;
					border-radius: 50rem !important;
					display: flex;
					align-items: center;

					image {
						width: 20rpx;
						height: 20rpx;
					}
				}
			}

			.avatar {
				width: 150rpx;
				height: 150rpx;
				border-radius: 100%;
			}

			.badage {
				font-family: 'neutra';
				position: absolute;
				bottom: 20rpx;
				left: 0;
				border: 2rpx solid $text-color-base;
				padding: 2rpx 20rpx;
				border-radius: $border-radius-lg;
				font-size: $font-size-base;
			}
		}

		.row {
			margin-top: $spacing-row-base;
			width: 100%;
			display: flex;
			align-items: center;

			.grid {
				flex: 1;
				flex-shrink: 0;
				display: flex;
				flex-direction: column;
				align-items: center;

				image {
					width: 100rpx;
					height: 100rpx;
				}

				.value {
					font-family: 'neutra';
					margin-bottom: $spacing-col-sm;
					font-size: $font-size-lg;
				}

				.title {
					font-size: $font-size-sm;
					color: $text-color-grey;
				}
			}
		}
	}

	.xinqiubobao {
		width: 100%;
		position: relative;

		.title {
			margin: 10rpx 0;
			font-size: $font-size-lg;
			font-weight: 500;
		}

		.swiper {
			height: 200rpx;
			margin-bottom: 10rpx;

			.swiper-item {

				.swiper-item-wrapper {
					display: flex;
					background-color: $bg-color-white;
					padding: 40rpx 60rpx;
					border-radius: $border-radius-base;
					align-items: center;
					margin-right: 40rpx;

					image {
						width: 100rpx;
						height: 100rpx;
						border-radius: 100%;
						margin-right: 20rpx;
					}

					.desc {
						display: flex;
						flex-direction: column;

						.title {
							font-size: $font-size-medium;
							font-weight: 500;
							margin-bottom: 10rpx;
						}

						.desc {
							font-size: $font-size-sm;
							color: $text-color-grey;
						}
					}
				}
			}
		}
	}

	.task-center {
		margin: 40rpx 0;
		background-color: $bg-color-white;
		padding: 10rpx 0;
		display: flex;
		align-items: center;
		border-radius: $border-radius-lg;

		.intro {
			flex: 1;
			display: flex;
			flex-direction: column;
			justify-content: center;
			align-items: center;

			.title {
				font-size: $font-size-lg;
				color: $text-color-base;
			}

			.subtitle {
				font-family: 'neutra';
				font-size: $font-size-sm;
			}
		}

		.image-wrapper {
			flex: 1;
			display: flex;
			justify-content: center;
			align-items: center;

			image {
				width: 200rpx;
				height: 200rpx;
			}
		}
	}

	.open-gift {
		width: 100%;
		background-color: $bg-color-white;
		padding: 30rpx 40rpx;
		margin-bottom: 20rpx;

		.header {
			display: flex;
			justify-content: space-between;
			align-items: center;
			margin-bottom: 20rpx;

			.title {
				font-size: $font-size-lg;
				font-weight: 500;
			}

			.subtitle {
				font-size: $font-size-base;
				color: $text-color-grey;
			}
		}

		.row {
			display: flex;
			flex-wrap: wrap;

			.grid {
				width: 33.3333%;
				display: flex;
				flex-direction: column;
				align-items: center;
				padding: 20rpx;

				image {
					width: 70rpx;
					height: 70rpx;
					margin-bottom: $spacing-row-base;
				}

				.title {
					font-size: $font-size-base;
					color: $text-color-base;
					display: flex;
					align-items: baseline;

					.number {
						margin-left: 5rpx;
						font-family: 'neutra';
						color: $color-warning;
					}
				}
			}
		}
	}

	.list-cell-wrapper {
		width: 100%;
		display: flex;
		justify-content: space-between;
		align-items: center;

		.title {
			font-size: $font-size-lg;
		}

		.subtitle {
			font-size: $font-size-sm;
			color: $text-color-assist;
		}
	}
</style>
