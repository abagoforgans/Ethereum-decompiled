contract main {




// =====================  Runtime code  =====================


mapping of uint8 stor0;
address tokenAdminAddress;
uint256 price;

function isAdmin(address arg1) {
    require arg1
    return bool(stor0[address(arg1)])
}

function price() {
    return price
}

function tokenAdmin() {
    return tokenAdminAddress
}

function _fallback() payable {
    revert
}

function setPrice(uint256 arg1) {
    require msg.sender
    require stor0[address(msg.sender)]
    price = arg1
}

function setTokenAdmin(address arg1) {
    require msg.sender
    require stor0[address(msg.sender)]
    tokenAdminAddress = arg1
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

function sub_254317c5(?) payable {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = arg2.length
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    if price != msg.value:
        revert with 0, 'Must send price in ether to create a token'
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len 13145] = code.data[2960 len 13145]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 13369] = arg3
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 13401] = arg4
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 13433] = msg.sender
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 13465] = tokenAdminAddress
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 13305] = 192
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 13497] = arg1.length
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 13529 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 13337] = arg1.length + 224
    mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 13529] = arg2.length
    mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 13561 len ceil32(arg2.length)] = arg2[all], mem[ceil32(arg1.length) + arg2.length + 160 len ceil32(arg2.length) - arg2.length]
    if not arg2.length % 32:
        create contract with 0 wei
                        code: code.data[2960 len 13145], Array(len=tokenAdminAddress, data=arg1.length, Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + 13529 len arg2.length + arg1.length + -ceil32(arg1.length) + 32]), arg1.length + 224, arg3, arg4, msg.sender
    else:
        mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 13561] = mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + -(arg2.length % 32) + 13593 len arg2.length % 32]
        create contract with 0 wei
                        code: code.data[2960 len 13145], Array(len=tokenAdminAddress, data=arg1.length, Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + 13529 len floor32(arg2.length) + arg1.length + -ceil32(arg1.length) + 64]), arg1.length + 224, arg3, arg4, msg.sender
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = 64
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 256 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 256] = arg2.length
    mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 288 len ceil32(arg2.length)] = arg2[all], mem[ceil32(arg1.length) + arg2.length + 160 len ceil32(arg2.length) - arg2.length]
    if not arg2.length % 32:
        emit 0x801b50b5: Array(len=arg1.length, data=Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + 256 len arg2.length + arg1.length + -ceil32(arg1.length) + 32]), arg1.length + 96, address(create.new_address), msg.sender
    else:
        mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 288] = mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + -(arg2.length % 32) + 320 len arg2.length % 32]
        emit 0x801b50b5: Array(len=arg1.length, data=Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + 256 len floor32(arg2.length) + arg1.length + -ceil32(arg1.length) + 64]), arg1.length + 96, address(create.new_address), msg.sender
    return address(create.new_address)
}



}
