contract main {




// =====================  Runtime code  =====================


const VERSION = '0.3.1'


uint8 status; offset 160
address owner;
mapping of uint8 stor1;
uint16 ASSET_TYPE;
uint256 stor3;
uint256 stor4;
mapping of struct swapStatus;
uint256 stor6;

function status() {
    require status <= 3
    return status
}

function ASSET_TYPE() {
    return ASSET_TYPE
}

function owner() {
    return owner
}

function getSwapStatus(address arg1, address arg2, address arg3, bytes arg4, bytes32 arg5) {
    require calldata.size - 4 >= 160
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    return swapStatus[arg1][arg2][arg3][sha3(arg4[all])][arg5].field_0
}

function _fallback() payable {
    revert
}

function revokeOracle(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'only the owner can call this'
    stor1[address(arg1)] = 0
}

function approveOracle(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'only the owner can call this'
    stor1[address(arg1)] = 1
}

function setStatus(uint8 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'only the owner can call this'
    require arg1 <= 3
    status = arg1
}

function sub_903a9c52(?) {
    require calldata.size - 4 >= 160
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    require status <= 3
    if status < 3:
        revert with 0, 'invalid contract status'
    if arg1 != msg.sender:
        revert with 0, 'only the sender can call this'
    if swapStatus[arg1][0][arg3][sha3(arg4[all])][arg5].field_0 != 1:
        revert with 0, 'swap already claimed or invalid'
    if swapStatus[arg1][arg2][arg3][sha3(arg4[all])][arg5].field_0:
        revert with 0, 'swap already exists'
    swapStatus[arg1][0][arg3][sha3(arg4[all])][arg5].field_0 = 0
    swapStatus[arg1][arg2][arg3][sha3(arg4[all])][arg5].field_0 = 1
    swapStatus[arg1][arg2][arg3][sha3(arg4[all])][arg5].field_8 = 0
    emit 0x38566144: sha3(arg1, 0, arg3, sha3(arg4[all]), arg5), sha3(arg1, arg2, arg3, sha3(arg4[all]), arg5)
}

function release(address arg1, address arg2, address arg3, bytes arg4, bytes32 arg5) {
    require calldata.size - 4 >= 160
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    require status <= 3
    if status < 2:
        revert with 0, 'invalid contract status'
    if arg1 != msg.sender:
        if arg3 != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        43,
                        0xfe6f6e6c7920746865206f7261636c65206f72207468652073656e6465722063616e2063616c6c20746869,
                        mem[207 len 21]
        if not stor1[address(msg.sender)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        43,
                        0xfe6f6e6c7920746865206f7261636c65206f72207468652073656e6465722063616e2063616c6c20746869,
                        mem[207 len 21]
    if swapStatus[arg1][arg2][arg3][sha3(arg4[all])][arg5].field_0 <= 10^9:
        revert with 0, 'swap unclaimed or invalid'
    swapStatus[arg1][arg2][arg3][sha3(arg4[all])][arg5].field_0 = 0
    mem[284 len arg4.length] = arg4[all]
    mem[arg4.length + 284] = 0
    require ext_code.size(mem[318 len 20])
    call mem[318 len 20].0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), mem[286]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'failed to send asset to receiver'
    if arg1 != msg.sender:
        emit Released(sha3(arg1, arg2, arg3, sha3(arg4[all]), arg5));
    else:
        emit 0x5e4f9e81: sha3(arg1, arg2, arg3, sha3(arg4[all]), arg5)
}

function returnFunds(address arg1, address arg2, address arg3, bytes arg4, bytes32 arg5) {
    require calldata.size - 4 >= 160
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    require status <= 3
    if status < 1:
        revert with 0, 'invalid contract status'
    if arg1 != msg.sender:
        if arg3 != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        43,
                        0xfe6f6e6c7920746865206f7261636c65206f72207468652073656e6465722063616e2063616c6c20746869,
                        mem[207 len 21]
        if not stor1[address(msg.sender)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        43,
                        0xfe6f6e6c7920746865206f7261636c65206f72207468652073656e6465722063616e2063616c6c20746869,
                        mem[207 len 21]
    if swapStatus[arg1][arg2][arg3][sha3(arg4[all])][arg5].field_0 <= 10^9:
        if swapStatus[arg1][arg2][arg3][sha3(arg4[all])][arg5].field_0 != 1:
            revert with 0, 'swap not expired or invalid'
    else:
        if block.timestamp <= swapStatus[arg1][arg2][arg3][sha3(arg4[all])][arg5].field_0:
            if swapStatus[arg1][arg2][arg3][sha3(arg4[all])][arg5].field_0 != 1:
                revert with 0, 'swap not expired or invalid'
    swapStatus[arg1][arg2][arg3][sha3(arg4[all])][arg5].field_0 = 0
    mem[284 len arg4.length] = arg4[all]
    mem[arg4.length + 284] = 0
    require ext_code.size(mem[318 len 20])
    call mem[318 len 20].0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), mem[286]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'failed to send asset to sender'
    if arg1 != msg.sender:
        emit 0xc99795d9: sha3(arg1, arg2, arg3, sha3(arg4[all]), arg5)
    else:
        emit 0xc47be71c: sha3(arg1, arg2, arg3, sha3(arg4[all]), arg5)
}

function sub_18815657(?) {
    require calldata.size - 4 >= 256
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    require status <= 3
    if status < 3:
        revert with 0, 'invalid contract status'
    if arg3 != msg.sender:
        revert with 0, 'only the oracle can call this'
    if not stor1[address(msg.sender)]:
        revert with 0, 'only the oracle can call this'
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
    _9 = mem[130]
    _10 = mem[150]
    mem[ceil32(arg4.length) + 160] = stor4
    mem[ceil32(arg4.length) + 192] = _9
    mem[ceil32(arg4.length) + 224] = address(_10)
    mem[ceil32(arg4.length) + 128] = 96
    signer = erecover(sha3(0, stor6, sha3(stor3, 'claim this swap', address(arg1), address(arg2), sha3(mem[ceil32(arg4.length) + 160 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]]), arg5)), arg6 << 248, arg7, arg8) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if address(signer) != arg2:
        revert with 0, 'invalid claim receiver signature'
    if not swapStatus[arg1][0][arg3][sha3(arg4[all])][arg5].field_0:
        if swapStatus[arg1][arg2][arg3][sha3(arg4[all])][arg5].field_0 != 1:
            revert with 0, 'swap already claimed or invalid'
        swapStatus[arg1][arg2][arg3][sha3(arg4[all])][arg5].field_0 = uint32(block.timestamp + (120 * 24 * 3600))
        emit 0x38d6042d: sha3(arg1, arg2, arg3, sha3(arg4[all]), arg5), sha3(arg1, arg2, arg3, sha3(arg4[all]), arg5)
    else:
        if swapStatus[arg1][0][arg3][sha3(arg4[all])][arg5].field_0 != 1:
            revert with 0, 'swap already claimed or invalid'
        if swapStatus[arg1][arg2][arg3][sha3(arg4[all])][arg5].field_0:
            revert with 0, 'swap already exists'
        swapStatus[arg1][0][arg3][sha3(arg4[all])][arg5].field_0 = 0
        swapStatus[arg1][arg2][arg3][sha3(arg4[all])][arg5].field_0 = uint32(block.timestamp + (120 * 24 * 3600))
        emit 0x38d6042d: sha3(arg1, 0, arg3, sha3(arg4[all]), arg5), sha3(arg1, arg2, arg3, sha3(arg4[all]), arg5)
}

function sub_19c5c12f(?) payable {
    require calldata.size - 4 >= 192
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    require status <= 3
    if status < 3:
        revert with 0, 'invalid contract status'
    if not stor1[address(arg1)]:
        revert with 0, 'invalid oracle address'
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    if mem[128 len 2] != ASSET_TYPE:
        revert with 0, 'invalid asset type'
    mem[ceil32(arg2.length) + 128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 160] = address(msg.sender)
    mem[ceil32(arg2.length) + 180] = 0
    mem[ceil32(arg2.length) + 200] = address(arg1)
    mem[ceil32(arg2.length) + 220] = sha3(arg2[all])
    mem[ceil32(arg2.length) + 252] = arg3
    mem[ceil32(arg2.length) + 128] = 124
    _16 = sha3(mem[ceil32(arg2.length) + 160 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]])
    if swapStatus[mem[ceil32(arg2.length) + 160 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]]].field_0:
        revert with 0, 'swap already exists'
    mem[ceil32(arg2.length) + 348] = arg4
    mem[ceil32(arg2.length) + 380] = arg5
    mem[ceil32(arg2.length) + 412] = arg6
    signer = erecover(_16, arg4 << 248, arg5, arg6) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if address(signer) != arg1:
        revert with 0, 'invalid swap oracle signature'
    mem[ceil32(arg2.length) + 348 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + arg2.length + 348] = 0
    if msg.value:
        mem[(2 * ceil32(arg2.length)) + 348] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(2 * ceil32(arg2.length)) + 352] = 32
        mem[(2 * ceil32(arg2.length)) + 384] = 31
        mem[(2 * ceil32(arg2.length)) + 416] = 'this asset doesn't accept ether'
    else:
        _30 = mem[ceil32(arg2.length) + 370 len 10], Mask(176, 80, arg5) >> 80
        _31 = mem[ceil32(arg2.length) + 350 len 30], uint16(arg5)
        mem[(2 * ceil32(arg2.length)) + 352] = msg.sender
        mem[(2 * ceil32(arg2.length)) + 384] = this.address
        mem[(2 * ceil32(arg2.length)) + 416] = _31
        require ext_code.size(address(_30))
        call address(_30).0x23b872dd with:
             gas gas_remaining wei
            args mem[(2 * ceil32(arg2.length)) + 352 len ceil32(arg2.length) + 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            swapStatus[_16].field_0 = 1
            swapStatus[_16].field_8 = 0
            emit Created(_16);
            mem[(2 * ceil32(arg2.length)) + 348] = 1
            return memory
              from (2 * ceil32(arg2.length)) + 348
               len ceil32(arg2.length) + 32
        mem[(2 * ceil32(arg2.length)) + 348] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(2 * ceil32(arg2.length)) + 352] = 32
        mem[(2 * ceil32(arg2.length)) + 384] = 30
        mem[(2 * ceil32(arg2.length)) + 416] = 'failed to lock asset on escrow'
    revert with memory
      from (2 * ceil32(arg2.length)) + 348
       len ceil32(arg2.length) + 100
}



}
