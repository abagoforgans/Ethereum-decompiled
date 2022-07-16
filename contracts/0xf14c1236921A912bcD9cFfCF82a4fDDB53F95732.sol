contract main {




// =====================  Runtime code  =====================


const sub_0a14dcd6(?) = 0xbc197c8100000000000000000000000000000000000000000000000000000000

const sub_acfc5eb1(?) = msg.sender

const sub_aef63579(?) = 0xf23a6e6100000000000000000000000000000000000000000000000000000000

const sub_e8c091f7(?) = 0xdeadbeef00000000000000000000000000000000000000000000000000000000


uint32 stor0;
array of uint256 lastData;
address lastOperatorAddress;
uint256 lastId;
uint256 lastValue;

function lastData() payable {
    return lastData[0 len lastData.length]
}

function lastValue() payable {
    return lastValue
}

function lastOperator() payable {
    return lastOperatorAddress
}

function lastId() payable {
    return lastId
}

function _fallback() payable {
    revert
}

function onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) payable {
    require calldata.size - 4 >= 160
    require arg5 <= 4294967296
    require arg5 + 36 <= calldata.size
    require arg5.length <= 4294967296 and arg5 + arg5.length + 36 <= calldata.size
    return 0xf23a6e6100000000000000000000000000000000000000000000000000000000
}

function onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    mem[ceil32(arg4.length) + 128] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
    return Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
}

function onERC1155BatchReceived(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) payable {
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
    return 0xbc197c8100000000000000000000000000000000000000000000000000000000
}

function isValidSignature(bytes32 arg1, bytes arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    if arg2.length != 65:
        revert with 0, 'LENGTH_65_REQUIRED'
    mem[212 len arg2.length] = arg2[all]
    mem[arg2.length + 212] = 0
    if arg2.length != 65:
        require ext_code.size(msg.sender)
        staticcall msg.sender.returnUserAccountAddress() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[ceil32(arg2.length) + 212] = not ext_call.return_data[12 len 20]
        return Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 244 len -arg2.length + ceil32(arg2.length)]
    if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 276, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 276, 32))), 0) - 256) + 27) != 27:
        if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 276, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 276, 32))), 0) - 256) + 27) != 28:
            require ext_code.size(msg.sender)
            staticcall msg.sender.returnUserAccountAddress() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[ceil32(arg2.length) + 212] = not ext_call.return_data[12 len 20]
            return Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 244 len -arg2.length + ceil32(arg2.length)]
    signer = erecover(sha3(msg.sender, arg1), (Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 276, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 276, 32))), 0) - 256) + 27 << 248, mem[212], mem[244]) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(msg.sender)
    staticcall msg.sender.returnUserAccountAddress() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return (ext_call.return_data[12 len 20] == address(signer))
}

function isValidSignature(bytes arg1, bytes arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    if arg2.length != 65:
        revert with 0, 'LENGTH_65_REQUIRED'
    mem[96 len arg1.length] = arg1[all]
    mem[212 len arg2.length] = arg2[all]
    mem[arg2.length + 212] = 0
    if arg2.length != 65:
        require ext_code.size(msg.sender)
        staticcall msg.sender.returnUserAccountAddress() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[12 len 20]:
            mem[ceil32(arg2.length) + 212] = 0xdeadbeef00000000000000000000000000000000000000000000000000000000
        else:
            mem[ceil32(arg2.length) + 212] = Mask(32, 224, stor0)
        return Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 244 len -arg2.length + ceil32(arg2.length)]
    if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 276, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 276, 32))), 0) - 256) + 27) != 27:
        if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 276, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 276, 32))), 0) - 256) + 27) != 28:
            require ext_code.size(msg.sender)
            staticcall msg.sender.returnUserAccountAddress() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[12 len 20]:
                mem[ceil32(arg2.length) + 212] = 0xdeadbeef00000000000000000000000000000000000000000000000000000000
            else:
                mem[ceil32(arg2.length) + 212] = Mask(32, 224, stor0)
            return Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 244 len -arg2.length + ceil32(arg2.length)]
    signer = erecover(sha3(msg.sender, sha3(arg1[all])), (Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 276, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 276, 32))), 0) - 256) + 27 << 248, mem[212], mem[244]) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(msg.sender)
    staticcall msg.sender.returnUserAccountAddress() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != address(signer):
        return 0xdeadbeef00000000000000000000000000000000000000000000000000000000
    return Mask(32, 224, stor0)
}



}
