contract main {




// =====================  Runtime code  =====================


mapping of uint8 stor0;
uint256 price;

function isAdmin(address arg1) {
    require arg1
    return bool(stor0[address(arg1)])
}

function price() {
    return price
}

function _fallback() payable {
    revert
}

function setPrice(uint256 arg1) {
    require msg.sender
    require stor0[address(msg.sender)]
    price = arg1
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

function sub_910504ca(?) payable {
    if price != msg.value:
        revert with 0, 'Must send price in ether to create a swapper'
    mem[(32 * arg2.length) + (32 * arg3.length) + 7277 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[(64 * arg2.length) + (32 * arg3.length) + 7277] = arg3.length
    mem[(64 * arg2.length) + (32 * arg3.length) + 7309 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
    create contract with 0 wei
                    code: code.data[2312 len 6957], address(arg1), msg.sender, Array(len=(32 * arg2.length) + 160, data=arg2.length, call.data[arg2 + 36 len floor32(arg2.length)], mem[(32 * arg2.length) + (32 * arg3.length) + floor32(arg2.length) + 7277 len (32 * arg2.length) + (32 * arg3.length) + -floor32(arg2.length) + 32])
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x7502ac88: address(create.new_address), msg.sender, arg1
    return address(create.new_address)
}



}
