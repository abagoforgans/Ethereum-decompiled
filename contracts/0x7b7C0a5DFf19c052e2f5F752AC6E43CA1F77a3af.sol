contract main {




// =====================  Runtime code  =====================


mapping of uint8 stor0;
uint8 stor1;
address stor1;
address stor1; offset 8
uint256 stor2;
uint256 price;

function isAdmin(address arg1) {
    require arg1
    return bool(stor0[address(arg1)])
}

function paused() {
    return bool(uint8(stor1.field_0))
}

function price() {
    return price
}

function _fallback() payable {
    revert
}

function sub_a897919a(?) {
    require msg.sender
    require stor0[address(msg.sender)]
    stor2 = arg1
}

function setPrice(uint256 arg1) {
    require msg.sender
    require stor0[address(msg.sender)]
    price = arg1
}

function sub_559f14e5(?) {
    require msg.sender
    require stor0[address(msg.sender)]
    address(stor1.field_8) = arg1
}

function unpause() {
    require uint8(stor1.field_0)
    require msg.sender
    require stor0[address(msg.sender)]
    uint8(stor1.field_0) = 0
    emit Unpaused(msg.sender);
}

function pause() {
    require not uint8(stor1.field_0)
    require msg.sender
    require stor0[address(msg.sender)]
    uint8(stor1.field_0) = 1
    emit Paused(msg.sender);
}

function addAdmin(address arg1) {
    require msg.sender
    require stor0[address(msg.sender)]
    require arg1
    require not stor0[address(arg1)]
    stor0[address(arg1)] = 1
    emit AdminAdded(arg1);
}

function removeAdmin(address arg1) {
    require msg.sender
    require stor0[address(msg.sender)]
    require arg1
    require stor0[address(arg1)]
    stor0[address(arg1)] = 0
    emit AdminRemoved(arg1);
}

function withdraw() {
    require msg.sender
    require stor0[address(msg.sender)]
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_40da5827(?) payable {
    require not uint8(stor1.field_0)
    if price != msg.value:
        revert with 0, 'Must send price in ether to deploy'
    mem[(32 * arg3.length) + (32 * arg4.length) + 160 len 7534] = code.data[3515 len 7534]
    mem[(32 * arg3.length) + (32 * arg4.length) + 7694] = arg1
    mem[(32 * arg3.length) + (32 * arg4.length) + 7726] = arg2
    mem[(32 * arg3.length) + (32 * arg4.length) + 7822] = arg5
    mem[(32 * arg3.length) + (32 * arg4.length) + 7854] = address(stor1.field_8)
    mem[(32 * arg3.length) + (32 * arg4.length) + 7886] = stor2
    mem[(32 * arg3.length) + (32 * arg4.length) + 7758] = 224
    mem[(32 * arg3.length) + (32 * arg4.length) + 7918] = arg3.length
    mem[(32 * arg3.length) + (32 * arg4.length) + 7950 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
    mem[(32 * arg3.length) + (32 * arg4.length) + 7790] = (32 * arg3.length) + 256
    mem[(64 * arg3.length) + (32 * arg4.length) + 7950] = arg4.length
    mem[(64 * arg3.length) + (32 * arg4.length) + 7982 len floor32(arg4.length)] = call.data[arg4 + 36 len floor32(arg4.length)]
    create contract with 0 wei
                    code: code.data[3515 len 7534], address(arg1), address(arg2), Array(len=stor2, data=arg3.length, call.data[arg3 + 36 len floor32(arg3.length)], mem[(32 * arg3.length) + (32 * arg4.length) + floor32(arg3.length) + 7950 len (32 * arg3.length) + (32 * arg4.length) + -floor32(arg3.length) + 32]), (32 * arg3.length) + 256, address(arg5), address(stor1.field_0)
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * arg3.length) + (32 * arg4.length) + 256 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
    mem[(64 * arg3.length) + (32 * arg4.length) + 256] = arg4.length
    mem[(64 * arg3.length) + (32 * arg4.length) + 288 len floor32(arg4.length)] = call.data[arg4 + 36 len floor32(arg4.length)]
    emit 0x913694db: Array(len=arg3.length, data=call.data[arg3 + 36 len floor32(arg3.length)], mem[(32 * arg3.length) + (32 * arg4.length) + floor32(arg3.length) + 256 len (32 * arg3.length) + (32 * arg4.length) + -floor32(arg3.length) + 32]), (32 * arg3.length) + 96, address(create.new_address), arg2, arg1
    return address(create.new_address)
}



}
