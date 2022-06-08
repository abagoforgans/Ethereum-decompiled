contract main {




// =====================  Runtime code  =====================


address sellerAddress;
uint256 contentCount;
uint256 saleCount;
uint256 status;
uint256 availableCount;
uint256 pendingCount;
uint256 price;
mapping of struct trades;
address escrowAddress;

function seller() {
    return sellerAddress
}

function trades(uint256 arg1) {
    return trades[arg1].field_0, trades[arg1].field_256, trades[arg1].field_512, bool(trades[arg1].field_768)
}

function status() {
    return status
}

function availableCount() {
    return availableCount
}

function price() {
    return price
}

function saleCount() {
    return saleCount
}

function contentCount() {
    return contentCount
}

function escrow() {
    return escrowAddress
}

function pendingCount() {
    return pendingCount
}

function _fallback() {
    revert
}

function sub_34a00a55(?) {
    require msg.sender == sellerAddress
    require trades[arg2].field_256 > 0
    require trades[arg2].field_512 <= availableCount
    require trades[arg2].field_512 <= pendingCount
    pendingCount -= trades[arg2].field_512
    availableCount -= trades[arg2].field_512
    trades[arg2].field_256 = 0
    contentCount++
    emit 0x3d2a5527: 2, Array(len=arg3.length, data=arg3[all]), trades[arg2].field_512, trades[arg2].field_256, arg1, msg.sender, arg2
}

function sub_ebf0b8d3(?) {
    require 1 == status
    require arg7 <= availableCount
    require arg7 > 0
    require not trades[arg2].field_256
    trades[arg2].field_0 = arg3
    trades[arg2].field_512 = arg7
    trades[arg2].field_768 = 1
    contentCount++
    emit 0x3d2a5527: 5, Array(len=arg4.length, data=arg4[all]), arg7, arg6, arg1, arg3, arg2
    availableCount -= arg7
    contentCount++
    emit 0x3d2a5527: 2, Array(len=arg5.length, data=arg5[all]), arg7, arg6, arg1, msg.sender, arg2
}

function sub_a73935c1(?) {
    require msg.sender == sellerAddress
    require trades[arg2].field_256 > 0
    require trades[arg2].field_512 <= pendingCount
    if not trades[arg2].field_768:
        require ext_code.size(escrowAddress)
        call escrowAddress.0xf4c1cc79 with:
             gas gas_remaining wei
            args arg1, arg2, sellerAddress, Array(len=arg4.length, data=arg4[all])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    pendingCount -= trades[arg2].field_512
    trades[arg2].field_256 = 0
    contentCount++
    emit 0x3d2a5527: 3, Array(len=arg3.length, data=arg3[all]), trades[arg2].field_512, trades[arg2].field_256, arg1, msg.sender, arg2
}

function sub_7cc9f362(?) payable {
    require 1 == status
    require msg.value >= arg5 * price
    require arg5 <= availableCount
    require arg5 > 0
    require not trades[arg2].field_256
    require ext_code.size(escrowAddress)
    call escrowAddress.0xbb7101eb with:
       value msg.value wei
         gas gas_remaining wei
        args arg1, arg2, sellerAddress, msg.sender, Array(len=arg4.length, data=arg4[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    trades[arg2].field_0 = msg.sender or Mask(96, 160, trades[arg2].field_0)
    trades[arg2].field_256 = msg.value
    trades[arg2].field_512 = arg5
    trades[arg2].field_768 = 0
    pendingCount += arg5
    contentCount++
    emit 0x3d2a5527: 1, Array(len=arg3.length, data=arg3[all]), arg5, msg.value, arg1, msg.sender, arg2
}

function sub_b51f79e3(?) {
    mem[128 len arg2.length] = arg2[all]
    require msg.sender == sellerAddress
    contentCount++
    mem[ceil32(arg2.length) + 128] = 10
    mem[ceil32(arg2.length) + 288 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    if not arg2.length % 32:
        emit 0x3d2a5527: 10, 128, 0, 0, arg2.length, Mask(8 * arg2.length, -(8 * arg2.length) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * arg2.length) - 256, arg1, msg.sender, 0
    else:
        mem[floor32(arg2.length) + ceil32(arg2.length) + 288] = mem[floor32(arg2.length) + ceil32(arg2.length) + -(arg2.length % 32) + 320 len arg2.length % 32]
        emit 0x3d2a5527: 10, 128, 0, 0, arg2.length, Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + 288 len floor32(arg2.length) + -ceil32(arg2.length) + 32], arg1, msg.sender, 0
}

function sub_1536f472(?) {
    mem[128 len arg2.length] = arg2[all]
    require msg.sender == sellerAddress
    status = 2
    contentCount++
    mem[ceil32(arg2.length) + 128] = 4
    mem[ceil32(arg2.length) + 288 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    if not arg2.length % 32:
        emit 0x3d2a5527: 4, 128, availableCount, 0, arg2.length, Mask(8 * arg2.length, -(8 * arg2.length) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * arg2.length) - 256, arg1, msg.sender, 0
    else:
        mem[floor32(arg2.length) + ceil32(arg2.length) + 288] = mem[floor32(arg2.length) + ceil32(arg2.length) + -(arg2.length % 32) + 320 len arg2.length % 32]
        emit 0x3d2a5527: 4, 128, availableCount, 0, arg2.length, Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + 288 len floor32(arg2.length) + -ceil32(arg2.length) + 32], arg1, msg.sender, 0
}



}
