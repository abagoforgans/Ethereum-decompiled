contract main {


// =======================  Init code  ======================


array of uint256 stor0;
mapping of uint256 stor1;
address stor2;

function _fallback() payable {
    mem[96 len 96] = code.data[3474 len 96]
    mem[192] = 5
    bool(stor0.length) = 0
    stor0.length.field_1 = 5
    stor0.length.field_8 = '3.0.0' / 256
    idx = 0
    while stor0.length + 31 / 32 > idx:
        stor0[idx].field_0 = 0
        idx = idx + 1
        continue 
    s = 0
    idx = 0
    while idx < 3:
        mem[0] = mem[(32 * idx) + 108 len 20]
        mem[32] = 1
        stor1[mem[(32 * idx) + 108 len 20]] = idx + 1
        s = mem[(32 * idx) + 96]
        idx = idx + 1
        continue 
    stor2 = msg.sender
    return code.data[375 len 3099]
}



// =====================  Runtime code  =====================


array of uint256 version;
mapping of uint256 stor1;
address stor2;
mapping of uint8 stor3;
address stor4;
address stor5;

function version() {
    return version[0 len version.length]
}

function sub_199775cb(?) {
    mem[123] = address(arg1)
    require bool(stor3['destroy'][this.address][arg1]) != 1
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 128] = arg3.length
    mem[ceil32(arg2.length) + 160 len arg3.length] = arg3[all]
    require 65 == arg2.length
    _10 = mem[192]
    if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27) != 27:
        require 28 == uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27)
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 192] = sha3('destroy', this.address, arg1)
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 224] = uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('var', '_10')), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('var', '_10')), 0) - 256) + 27)
    signer = erecover(sha3('destroy', this.address, arg1), (Mask(8, -(('mask_shl', 256, 0, -3, ('var', '_10')), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('var', '_10')), 0) - 256) + 27 << 248, mem[128], mem[160]) 
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 160] = signer
    require erecover.result
    require stor1[address(signer)]
    require 65 == arg3.length
    if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 224, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2')))))), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 224, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2')))))), 32))), 0) - 256) + 27) != 27:
        require 28 == uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 224, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2')))))), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 224, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2')))))), 32))), 0) - 256) + 27)
    signer = erecover(sha3('destroy', this.address, arg1), (Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 224, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2')))))), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 224, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2')))))), 32))), 0) - 256) + 27 << 248, mem[ceil32(arg2.length) + 160], mem[ceil32(arg2.length) + 192]) 
    require erecover.result
    require stor1[address(signer)]
    require address(signer) != address(signer)
    selfdestruct(arg1)
}

function _fallback() payable {
  stop
}

function tokenFallback(address arg1, uint256 arg2, bytes arg3) {
  stop
}

function sub_0e9125b8(?) {
    require stor2 == msg.sender
    require stor5 == arg1
    require ext_code.size(stor4)
    call stor4.fundTransferIn(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args address(arg1), address(arg2), arg3
    require ext_call.success
}

function sub_9eb676d9(?) {
    mem[125] = arg1
    mem[157] = address(arg2)
    mem[177] = address(arg3)
    require bool(stor3['configure'][this.address][arg1][arg2][arg3]) != 1
    mem[128 len arg4.length] = arg4[all]
    mem[ceil32(arg4.length) + 128] = arg5.length
    mem[ceil32(arg4.length) + 160 len arg5.length] = arg5[all]
    require 65 == arg4.length
    _10 = arg3 % 1099511627776 << 96, mem[209 len 15]
    if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('data', ('mask_shl', 40, 0, 96, ('param', 'arg3')), ('mem', ('range', 209, 15)))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('data', ('mask_shl', 40, 0, 96, ('param', 'arg3')), ('mem', ('range', 209, 15)))), 0) - 256) + 27) != 27:
        require 28 == uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('data', ('mask_shl', 40, 0, 96, ('param', 'arg3')), ('mem', ('range', 209, 15)))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('data', ('mask_shl', 40, 0, 96, ('param', 'arg3')), ('mem', ('range', 209, 15)))), 0) - 256) + 27)
    mem[ceil32(arg4.length) + ceil32(arg5.length) + 192] = sha3('configure', this.address, arg1, arg2, arg3)
    mem[ceil32(arg4.length) + ceil32(arg5.length) + 224] = uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('var', '_10')), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('var', '_10')), 0) - 256) + 27)
    signer = erecover(sha3('configure', this.address, arg1, arg2, arg3), (Mask(8, -(('mask_shl', 256, 0, -3, ('var', '_10')), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('var', '_10')), 0) - 256) + 27 << 248, mem[128 len 29], arg2, Mask(120, 40, arg3) >> 40) 
    mem[ceil32(arg4.length) + ceil32(arg5.length) + 160] = signer
    require erecover.result
    require stor1[address(signer)]
    require 65 == arg5.length
    if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 224, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg4')))))), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 224, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg4')))))), 32))), 0) - 256) + 27) != 27:
        require 28 == uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 224, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg4')))))), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 224, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg4')))))), 32))), 0) - 256) + 27)
    signer = erecover(sha3('configure', this.address, arg1, arg2, arg3), (Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 224, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg4')))))), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 224, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg4')))))), 32))), 0) - 256) + 27 << 248, mem[ceil32(arg4.length) + 160], mem[ceil32(arg4.length) + 192]) 
    require erecover.result
    require stor1[address(signer)]
    require address(signer) != address(signer)
    stor4 = arg2
    stor5 = arg3
    stor3['configure'][this.address][arg1][arg2][arg3] = 1
}

function sub_021f9940(?) {
    mem[124] = arg1
    mem[156] = address(arg2)
    mem[176] = arg3
    mem[208] = address(arg4)
    mem[228] = arg5
    require bool(stor3['withdraw'][Mask(224, 0, arg1)][arg2][arg3][arg4][arg5]) != 1
    mem[128 len arg6.length] = arg6[all]
    mem[ceil32(arg6.length) + 128] = arg7.length
    mem[ceil32(arg6.length) + 160 len arg7.length] = arg7[all]
    require 65 == arg6.length
    if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('data', ('mask_shl', 128, 0, 0, ('param', 'arg3')), ('mask_shl', 128, 0, 0, ('param', 'arg4')))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('data', ('mask_shl', 128, 0, 0, ('param', 'arg3')), ('mask_shl', 128, 0, 0, ('param', 'arg4')))), 0) - 256) + 27) != 27:
        require 28 == uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('data', ('mask_shl', 128, 0, 0, ('param', 'arg3')), ('mask_shl', 128, 0, 0, ('param', 'arg4')))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('data', ('mask_shl', 128, 0, 0, ('param', 'arg3')), ('mask_shl', 128, 0, 0, ('param', 'arg4')))), 0) - 256) + 27)
    mem[ceil32(arg6.length) + ceil32(arg7.length) + 192] = sha3('withdraw', Mask(224, 0, arg1), arg2, arg3, arg4, arg5)
    mem[ceil32(arg6.length) + ceil32(arg7.length) + 224] = uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('data', ('mask_shl', 128, 0, 0, ('param', 'arg3')), ('mask_shl', 128, 0, 0, ('param', 'arg4')))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('data', ('mask_shl', 128, 0, 0, ('param', 'arg3')), ('mask_shl', 128, 0, 0, ('param', 'arg4')))), 0) - 256) + 27)
    signer = erecover(sha3('withdraw', Mask(224, 0, arg1), arg2, arg3, arg4, arg5), (Mask(8, -(('mask_shl', 256, 0, -3, ('data', ('mask_shl', 128, 0, 0, ('param', 'arg3')), ('mask_shl', 128, 0, 0, ('param', 'arg4')))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('data', ('mask_shl', 128, 0, 0, ('param', 'arg3')), ('mask_shl', 128, 0, 0, ('param', 'arg4')))), 0) - 256) + 27 << 248, mem[128 len 28], uint32(arg2), uint128(arg2), uint128(arg3)) 
    mem[ceil32(arg6.length) + ceil32(arg7.length) + 160] = signer
    require erecover.result
    require stor1[address(signer)]
    require 65 == arg7.length
    if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 224, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg6')))))), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 224, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg6')))))), 32))), 0) - 256) + 27) != 27:
        require 28 == uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 224, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg6')))))), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 224, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg6')))))), 32))), 0) - 256) + 27)
    signer = erecover(sha3('withdraw', Mask(224, 0, arg1), arg2, arg3, arg4, arg5), (Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 224, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg6')))))), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 224, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg6')))))), 32))), 0) - 256) + 27 << 248, mem[ceil32(arg6.length) + 160], mem[ceil32(arg6.length) + 192]) 
    require erecover.result
    require stor1[address(signer)]
    require address(signer) != address(signer)
    call arg2 with:
       value arg3 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    if arg5 > 0:
        call arg4 with:
           value arg5 wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
    stor3['withdraw'][Mask(224, 0, arg1)][arg2][arg3][arg4][arg5] = 1
    emit WithdrawETH(arg3, arg2);
}

function sub_777af3d9(?) {
    mem[109] = address(this.address)
    mem[149] = arg2
    mem[181] = address(arg3)
    mem[201] = arg4
    mem[233] = address(arg5)
    mem[253] = arg6
    require bool(stor3['withdrawToken'][uint8(this.address)][arg1][arg2][arg3][arg4][arg5][arg6]) != 1
    mem[128 len arg7.length] = arg7[all]
    mem[ceil32(arg7.length) + 128] = arg8.length
    mem[ceil32(arg7.length) + 160 len arg8.length] = arg8[all]
    require 65 == arg7.length
    if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('data', ('mask_shl', 72, 0, 0, ('param', 'arg3')), ('mask_shl', 184, 72, -72, ('param', 'arg4')))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('data', ('mask_shl', 72, 0, 0, ('param', 'arg3')), ('mask_shl', 184, 72, -72, ('param', 'arg4')))), 0) - 256) + 27) != 27:
        require 28 == uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('data', ('mask_shl', 72, 0, 0, ('param', 'arg3')), ('mask_shl', 184, 72, -72, ('param', 'arg4')))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('data', ('mask_shl', 72, 0, 0, ('param', 'arg3')), ('mask_shl', 184, 72, -72, ('param', 'arg4')))), 0) - 256) + 27)
    mem[ceil32(arg7.length) + ceil32(arg8.length) + 192] = sha3('withdrawToken', uint8(this.address), arg1, arg2, arg3, arg4, arg5, arg6)
    mem[ceil32(arg7.length) + ceil32(arg8.length) + 224] = uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('data', ('mask_shl', 72, 0, 0, ('param', 'arg3')), ('mask_shl', 184, 72, -72, ('param', 'arg4')))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('data', ('mask_shl', 72, 0, 0, ('param', 'arg3')), ('mask_shl', 184, 72, -72, ('param', 'arg4')))), 0) - 256) + 27)
    signer = erecover(sha3('withdrawToken', uint8(this.address), arg1, arg2, arg3, arg4, arg5, arg6), (Mask(8, -(('mask_shl', 256, 0, -3, ('data', ('mask_shl', 72, 0, 0, ('param', 'arg3')), ('mask_shl', 184, 72, -72, ('param', 'arg4')))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('data', ('mask_shl', 72, 0, 0, ('param', 'arg3')), ('mask_shl', 184, 72, -72, ('param', 'arg4')))), 0) - 256) + 27 << 248, mem[128 len 1], arg1, arg2, Mask(88, 72, arg3) >> 72) 
    mem[ceil32(arg7.length) + ceil32(arg8.length) + 160] = signer
    require erecover.result
    require stor1[address(signer)]
    require 65 == arg8.length
    if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 224, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg7')))))), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 224, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg7')))))), 32))), 0) - 256) + 27) != 27:
        require 28 == uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 224, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg7')))))), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 224, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg7')))))), 32))), 0) - 256) + 27)
    signer = erecover(sha3('withdrawToken', uint8(this.address), arg1, arg2, arg3, arg4, arg5, arg6), (Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 224, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg7')))))), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 224, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg7')))))), 32))), 0) - 256) + 27 << 248, mem[ceil32(arg7.length) + 160], mem[ceil32(arg7.length) + 192]) 
    require erecover.result
    require stor1[address(signer)]
    require address(signer) != address(signer)
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg3), arg4
    require ext_call.success
    if arg6 > 0:
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args address(arg5), arg6
        require ext_call.success
    stor3['withdrawToken'][uint8(this.address)][arg1][arg2][arg3][arg4][arg5][arg6] = 1
    emit WithdrawToken(arg4, arg1, arg3);
}



}
