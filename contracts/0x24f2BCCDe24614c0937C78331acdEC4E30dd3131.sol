contract main {




// =====================  Runtime code  =====================


const sub_0a14dcd6(?) = 0xbc197c8100000000000000000000000000000000000000000000000000000000

const sub_aef63579(?) = 0xf23a6e6100000000000000000000000000000000000000000000000000000000

const sub_e8c091f7(?) = 0xdeadbeef00000000000000000000000000000000000000000000000000000000


address stor0;
uint256 stor1;
uint256 sub_1eb40824;
uint8 stor3;
uint8 stor3; offset 168
uint128 stor3; offset 168
address stor3; offset 8
array of uint256 lastData;
address lastOperatorAddress;
uint256 lastId;
uint256 lastValue;

function lastData() {
    return lastData[0 len lastData.length]
}

function sub_136d5419(?) {
    return sub_1eb40824
}

function sub_1dbb9381(?) {
    return bool(uint8(stor3.field_168))
}

function sub_1eb40824(?) {
    return sub_1eb40824
}

function lastValue() {
    return lastValue
}

function sub_48d447ef(?) {
    return bool(uint8(stor3.field_0))
}

function lastOperator() {
    return lastOperatorAddress
}

function lastId() {
    return lastId
}

function sub_89d21eab(?) {
    return sha3('Tx_signature', sub_1eb40824)
}

function _fallback() payable {
    if msg.value > 0:
        emit Deposit(msg.value, msg.sender);
}

function setShouldReject(bool arg1) {
    require calldata.size - 4 >= 32
    Mask(88, 0, stor3.field_168) = Mask(88, 0, arg1)
}

function sub_57cf550b(?) {
    if bool(uint8(stor3.field_0)) == 1:
        return 0
    require ext_code.size(stor0)
    call stor0.0x83d18bcf with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[12 len 20]
}

function returnUserAccountAddress() {
    if bool(uint8(stor3.field_0)) == 1:
        return address(stor3.field_8)
    require ext_code.size(stor0)
    call stor0.returnUserControlAddress(uint256 arg1) with:
         gas gas_remaining wei
        args stor1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[12 len 20]
}

function onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) {
    require calldata.size - 4 >= 160
    require arg5 <= 4294967296
    require arg5 + 36 <= calldata.size
    require arg5.length <= 4294967296 and arg5 + arg5.length + 36 <= calldata.size
    if bool(uint8(stor3.field_168)) != 1:
        return 0xf23a6e6100000000000000000000000000000000000000000000000000000000
    return 0xdeadbeef00000000000000000000000000000000000000000000000000000000
}

function onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    mem[ceil32(arg4.length) + 128] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
    return Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
}

function sub_26f5ed42(?) {
    require calldata.size - 4 >= 32
    if bool(uint8(stor3.field_0)) == 1:
        require not msg.sender
    else:
        require ext_code.size(stor0)
        call stor0.0x83d18bcf with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require msg.sender == ext_call.return_data[12 len 20]
    address(stor3.field_8) = arg1
    uint8(stor3.field_0) = 1
    emit 0x520934ba: this.address
}

function onERC1155BatchReceived(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) {
    require calldata.size - 4 >= 160
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + (32 * arg4.length) + 36 <= calldata.size
    require arg5 <= 4294967296
    require arg5 + 36 <= calldata.size
    require arg5.length <= 4294967296 and arg5 + arg5.length + 36 <= calldata.size
    if bool(uint8(stor3.field_168)) != 1:
        return 0xbc197c8100000000000000000000000000000000000000000000000000000000
    return 0xdeadbeef00000000000000000000000000000000000000000000000000000000
}

function callTx(bytes arg1, address arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    mem[ceil32(arg1.length) + 128] = arg4.length
    mem[ceil32(arg1.length) + 160 len arg4.length] = arg4[all]
    mem[ceil32(arg1.length) + arg4.length + 160] = 0
    if bool(uint8(stor3.field_0)) == 1:
        mem[ceil32(arg1.length) + ceil32(arg4.length) + 160] = 96
        mem[ceil32(arg1.length) + ceil32(arg4.length) + 192] = 0
        mem[ceil32(arg1.length) + ceil32(arg4.length) + 288] = 12
        mem[ceil32(arg1.length) + ceil32(arg4.length) + 320] = 'Tx_signature'
        mem[ceil32(arg1.length) + ceil32(arg4.length) + 224] = ceil32(arg1.length) + ceil32(arg4.length) + 288
        mem[ceil32(arg1.length) + ceil32(arg4.length) + 256] = sub_1eb40824
        mem[ceil32(arg1.length) + ceil32(arg4.length) + 416] = sub_1eb40824
        mem[ceil32(arg1.length) + ceil32(arg4.length) + 384] = 64
        mem[ceil32(arg1.length) + ceil32(arg4.length) + 448] = 12
        mem[ceil32(arg1.length) + ceil32(arg4.length) + 480] = Mask(96, 0, 'Tx_signature')
        mem[ceil32(arg1.length) + ceil32(arg4.length) + 352] = 128
        if arg1.length != 65:
            if address(stor3.field_8) != 0:
                return 0
        else:
            if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27) == 27:
                mem[ceil32(arg1.length) + ceil32(arg4.length) + 544] = sha3('Tx_signature', sub_1eb40824)
                mem[ceil32(arg1.length) + ceil32(arg4.length) + 576] = uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27)
                mem[ceil32(arg1.length) + ceil32(arg4.length) + 608] = mem[128]
                mem[ceil32(arg1.length) + ceil32(arg4.length) + 640] = mem[160]
                signer = erecover(sha3('Tx_signature', sub_1eb40824), (Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27 << 248, mem[128], mem[160]) 
                mem[ceil32(arg1.length) + ceil32(arg4.length) + 512] = signer
                if not erecover.result:
                    revert with ext_call.return_data[0 len return_data.size]
                if address(signer) != address(stor3.field_8):
                    return 0
            else:
                if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27) != 28:
                    if address(stor3.field_8) != 0:
                        return 0
                else:
                    mem[ceil32(arg1.length) + ceil32(arg4.length) + 544] = sha3('Tx_signature', sub_1eb40824)
                    mem[ceil32(arg1.length) + ceil32(arg4.length) + 576] = uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27)
                    mem[ceil32(arg1.length) + ceil32(arg4.length) + 608] = mem[128]
                    mem[ceil32(arg1.length) + ceil32(arg4.length) + 640] = mem[160]
                    signer = erecover(sha3('Tx_signature', sub_1eb40824), (Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27 << 248, mem[128], mem[160]) 
                    mem[ceil32(arg1.length) + ceil32(arg4.length) + 512] = signer
                    if not erecover.result:
                        revert with ext_call.return_data[0 len return_data.size]
                    if address(signer) != address(stor3.field_8):
                        return 0
    else:
        require ext_code.size(stor0)
        call stor0.returnUserControlAddress(uint256 arg1) with:
             gas gas_remaining wei
            args stor1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[ceil32(arg1.length) + ceil32(arg4.length) + 160] = 96
        mem[ceil32(arg1.length) + ceil32(arg4.length) + 192] = 0
        mem[ceil32(arg1.length) + ceil32(arg4.length) + 288] = 12
        mem[ceil32(arg1.length) + ceil32(arg4.length) + 320] = 'Tx_signature'
        mem[ceil32(arg1.length) + ceil32(arg4.length) + 224] = ceil32(arg1.length) + ceil32(arg4.length) + 288
        mem[ceil32(arg1.length) + ceil32(arg4.length) + 256] = sub_1eb40824
        mem[ceil32(arg1.length) + ceil32(arg4.length) + 416] = sub_1eb40824
        mem[ceil32(arg1.length) + ceil32(arg4.length) + 384] = 64
        mem[ceil32(arg1.length) + ceil32(arg4.length) + 448] = 12
        mem[ceil32(arg1.length) + ceil32(arg4.length) + 480] = Mask(96, 0, 'Tx_signature')
        mem[ceil32(arg1.length) + ceil32(arg4.length) + 352] = 128
        if bool(uint8(stor3.field_0)) != 1:
            if arg1.length != 65:
                if address(ext_call.return_data[0]) != 0:
                    return 0
            else:
                if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27) == 27:
                    mem[ceil32(arg1.length) + ceil32(arg4.length) + 544] = sha3('Tx_signature', sub_1eb40824)
                    mem[ceil32(arg1.length) + ceil32(arg4.length) + 576] = uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27)
                    mem[ceil32(arg1.length) + ceil32(arg4.length) + 608] = mem[128]
                    mem[ceil32(arg1.length) + ceil32(arg4.length) + 640] = mem[160]
                    signer = erecover(sha3('Tx_signature', sub_1eb40824), (Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27 << 248, mem[128], mem[160]) 
                    mem[ceil32(arg1.length) + ceil32(arg4.length) + 512] = signer
                    if not erecover.result:
                        revert with ext_call.return_data[0 len return_data.size]
                    if address(signer) != address(ext_call.return_data[0]):
                        return 0
                else:
                    if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27) != 28:
                        if address(ext_call.return_data[0]) != 0:
                            return 0
                    else:
                        mem[ceil32(arg1.length) + ceil32(arg4.length) + 544] = sha3('Tx_signature', sub_1eb40824)
                        mem[ceil32(arg1.length) + ceil32(arg4.length) + 576] = uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27)
                        mem[ceil32(arg1.length) + ceil32(arg4.length) + 608] = mem[128]
                        mem[ceil32(arg1.length) + ceil32(arg4.length) + 640] = mem[160]
                        signer = erecover(sha3('Tx_signature', sub_1eb40824), (Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27 << 248, mem[128], mem[160]) 
                        mem[ceil32(arg1.length) + ceil32(arg4.length) + 512] = signer
                        if not erecover.result:
                            revert with ext_call.return_data[0 len return_data.size]
                        if address(signer) != address(ext_call.return_data[0]):
                            return 0
        else:
            if arg1.length != 65:
                if address(stor3.field_8) != 0:
                    return 0
            else:
                if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27) == 27:
                    mem[ceil32(arg1.length) + ceil32(arg4.length) + 544] = sha3('Tx_signature', sub_1eb40824)
                    mem[ceil32(arg1.length) + ceil32(arg4.length) + 576] = uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27)
                    mem[ceil32(arg1.length) + ceil32(arg4.length) + 608] = mem[128]
                    mem[ceil32(arg1.length) + ceil32(arg4.length) + 640] = mem[160]
                    signer = erecover(sha3('Tx_signature', sub_1eb40824), (Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27 << 248, mem[128], mem[160]) 
                    mem[ceil32(arg1.length) + ceil32(arg4.length) + 512] = signer
                    if not erecover.result:
                        revert with ext_call.return_data[0 len return_data.size]
                    if address(signer) != address(stor3.field_8):
                        return 0
                else:
                    if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27) != 28:
                        if address(stor3.field_8) != 0:
                            return 0
                    else:
                        mem[ceil32(arg1.length) + ceil32(arg4.length) + 544] = sha3('Tx_signature', sub_1eb40824)
                        mem[ceil32(arg1.length) + ceil32(arg4.length) + 576] = uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27)
                        mem[ceil32(arg1.length) + ceil32(arg4.length) + 608] = mem[128]
                        mem[ceil32(arg1.length) + ceil32(arg4.length) + 640] = mem[160]
                        signer = erecover(sha3('Tx_signature', sub_1eb40824), (Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27 << 248, mem[128], mem[160]) 
                        mem[ceil32(arg1.length) + ceil32(arg4.length) + 512] = signer
                        if not erecover.result:
                            revert with ext_call.return_data[0 len return_data.size]
                        if address(signer) != address(stor3.field_8):
                            return 0
    call arg2.mem[ceil32(arg1.length) + 160 len 4] with:
       value arg3 wei
         gas gas_remaining - 34710 wei
        args mem[ceil32(arg1.length) + 164 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] - 4]
    if not ext_call.success:
        emit ExecutionFailure(sub_1eb40824 - 1);
    else:
        sub_1eb40824++
        emit Execution(sub_1eb40824 - 1);
    return 1
}



}
