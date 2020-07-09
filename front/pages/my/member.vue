<template>
	<view class="container">
		<view class="header">
			<image src="https://static.heytea.com/weapp/images/member/me_kaitong_img_card.png" class="card-img" mode="widthFix"></image>
			<view class="tips">会员实名信息不可修改</view>
		</view>
		<view class="card">
			<view class="card-title">
				<view class="title">会员实名认证</view>
				<view class="subtitle">填写实名信息享受会员权益</view>
			</view>
			<view class="card-body">
				<list-cell padding="30rpx">
					<view class="form-item">
						<view class="label">身份证信息</view>
						<input v-model="identify" type="text" placeholder="请填写身份证号" placeholder-class="placeholder" />
					</view>
				</list-cell>
				<list-cell padding="30rpx">
					<view class="form-item">
						<view class="label">用户名</view>
						<input v-model="username" type="text" placeholder="请填写真实姓名" placeholder-class="placeholder" />
					</view>
				</list-cell>
				<list-cell padding="30rpx">
					<view class="form-item">
						<view class="label">手机号</view>
						<input v-model="phone" type="text" placeholder="请填写您的手机号" placeholder-class="placeholder" />
					</view>
				</list-cell>
			</view>
		</view>
		<!-- 星球会员权益 end -->
		<view class="footer">
			<view class="agreement">
				<!-- <checkbox color="#DBA871" /> -->
				<view>同意<text class="text-color-primary">《五凤楼会员服务协议》</text></view>
			</view>
			<view class="bottom">
				<view class="font-size-lg font-weight-bold ml-30">
					<!-- 总价：<text class="text-color-primary">179/12月</text> -->
				</view>
				<button type="primary" @click="submit" v-if="type==0">提交信息</button>
				<button type="primary" v-if="type==1">您已经是注册会员</button>
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
		computed: {
			...mapState(['wechatid','scores', 'type', 'clientid']),
		},
		data() {
			return {
				agree: true,
				identify:"",
				username:"",
				phone:""
			}
		},
		methods:{
			...mapMutations(['MEMBER']),
			submit(){
				console.log(this.identify+" "+this.username+" "+this.phone)
				var that = this
				uni.request({
					url: 'http://localhost:8000/member/memberRegis',
					method:"POST",
					data:{
						clientid:this.clientid,
						identityid:this.identify,
						realname:this.username,
						accumulatescores:0,
						scores:this.scores
					},
					success(res) {
						console.log(res)
						that.MEMBER();
					}
				})
				
			}
		}
	}
</script>

<style lang="scss" scoped>
	.container {
		height: auto;
		padding-bottom: 200rpx;
	}

	.header {
		width: 100%;
		background-color: #f6f6f6;
		display: flex;
		flex-direction: column;
		align-items: center;
		padding: 40rpx 0 0;

		.card-img {
			width: 575rpx;
			box-shadow: 0 10rpx 10rpx 0 rgba($color: #e3e3e3, $alpha: 0.6);
		}

		.tips {
			font-size: $font-size-sm;
			color: $color-primary;
			padding: 30rpx 0;
		}
	}

	.card-title {
		display: flex;
		align-items: baseline;
		margin-bottom: 20rpx;

		.title {
			font-family: 'wenyue';
			font-size: $font-size-lg;
			font-weight: 500;
		}

		.subtitle {
			margin-left: 20rpx;
			font-size: $font-size-base;
			color: $text-color-assist;
		}
	}

	.card {
		width: 100%;
		background-color: $bg-color-white;
		padding: 30rpx 40rpx;
		margin-bottom: 20rpx;

		.grids {
			display: flex;
			flex-wrap: wrap;

			.grid {
				width: 33.3333%;
				display: flex;
				flex-direction: column;
				align-items: center;
				padding: 20rpx;
				position: relative;

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

					.badge {
						position: absolute;
						top: 10rpx;
						right: 10rpx;
					}

					.number {
						margin-left: 5rpx;
						font-family: 'neutra';
						color: $color-warning;
					}
				}
			}
		}

		.row {
			padding: 20rpx 0;
			display: flex;
			justify-content: space-between;
			font-size: $font-size-medium;

			.title {
				display: flex;
				align-items: center;

				.badge {
					position: relative;
					margin-top: -40rpx;
					margin-left: 6rpx;
				}
			}

			.subtitle {
				color: $color-primary;
				font-weight: 500;
			}
		}

		.footer {
			padding: 20rpx 0 0;
			display: flex;
			justify-content: center;
			align-items: center;
			font-size: $font-size-sm;

			image {
				width: 30rpx;
				height: 30rpx;
			}
		}
	}

	.badge {
		color: #FFFFFF;
		font-size: 20rpx;
		line-height: 1rem;
		padding: 0 16rpx;
		border-radius: 50rem 50rem 50rem 0;

		&.danger {
			background-color: #d36661;
		}

		&.primary {
			background-color: $color-primary;
		}
	}

	.footer {
		height: 200rpx;
		position: fixed;
		bottom: 0;
		width: 100%;
		display: flex;
		flex-direction: column;
		background-color: #FFFFFF;
		z-index: 10;

		.agreement {
			height: 100rpx;
			display: flex;
			align-items: center;
			padding: 0 30rpx;
			font-size: $font-size-sm;
			color: $text-color-assist;

			uni-checkbox /deep/.uni-checkbox-input {
				width: 34rpx;
				height: 34rpx;
			}
		}

		.bottom {
			height: 100rpx;
			display: flex;
			justify-content: space-between;
			align-items: center;
			border-top: 1rpx solid rgba($color: $border-color, $alpha: 0.8);

			button {
				height: 100%;
				font-size: $font-size-lg;
				border-radius: 0 !important;
				line-height: 100rpx;
				padding: 0 100rpx;
			}
		}
	}
</style>
