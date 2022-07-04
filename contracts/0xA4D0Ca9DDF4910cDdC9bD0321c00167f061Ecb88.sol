contract main {




// =====================  Runtime code  =====================


address owner;
uint256 sub_1e3024fe;
uint256 sub_b83282da;
uint256 sub_272a3fe4;
uint256 REWARD_INTERVAL;
array of address sub_049e03db;
address stor6;
array of struct sub_d84abad9;

function sub_04675bfc(?) {
    return sub_049e03db.length
}

function sub_049e03db(?) {
    require arg1 < sub_049e03db.length
    return sub_049e03db[arg1]
}

function sub_1e3024fe(?) {
    return sub_1e3024fe
}

function sub_272a3fe4(?) {
    return sub_272a3fe4
}

function REWARD_INTERVAL() {
    return REWARD_INTERVAL
}

function owner() {
    return owner
}

function sub_b83282da(?) {
    return sub_b83282da
}

function sub_d84abad9(?) {
    require arg1 < sub_d84abad9.length
    return sub_d84abad9[arg1].field_0, 
           sub_d84abad9[arg1].field_256,
           sub_d84abad9[arg1].field_512,
           sub_d84abad9[arg1].field_768,
           sub_d84abad9[arg1].field_1024
}

function _fallback() payable {
  stop
}

function isOwner() {
    return (msg.sender == owner)
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function adminWithdraw() {
    require msg.sender == owner
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_30d04564(?) {
    require ext_code.size(stor6)
    call stor6.addressOf(string arg1) with:
         gas gas_remaining wei
        args Array(len=7, data='AuthMgr')
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).isAuth(address arg1) with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require arg1 >= 1
    require arg3 >= 10
    require arg4 >= 10
    sub_1e3024fe = arg1
    sub_b83282da = arg2
    sub_272a3fe4 = arg3
    REWARD_INTERVAL = arg4
}

function sub_fbf8253a(?) {
    require ext_code.size(stor6)
    call stor6.addressOf(string arg1) with:
         gas gas_remaining wei
        args Array(len=7, data='AuthMgr')
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).isAuth(address arg1) with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require sub_049e03db.length - 1 < sub_049e03db.length
    require ext_code.size(sub_049e03db[sub_049e03db.length])
    call sub_049e03db[sub_049e03db.length].0xf18d20be with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_049e03db[sub_049e03db.length])
    call sub_049e03db[sub_049e03db.length].0x7b1acc31 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_049e03db[sub_049e03db.length])
    call sub_049e03db[sub_049e03db.length].0xb91c4914 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_049e03db[sub_049e03db.length])
    call sub_049e03db[sub_049e03db.length].0x7b1acc31 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_049e03db[sub_049e03db.length])
    call sub_049e03db[sub_049e03db.length].0x58fc7606 with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_049e03db[sub_049e03db.length])
    call sub_049e03db[sub_049e03db.length].totalValue() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    sub_d84abad9.length++
    sub_d84abad9[sub_d84abad9.length].field_0 = sub_049e03db[sub_049e03db.length]
    sub_d84abad9[sub_d84abad9.length].field_256 = ext_call.return_data[0]
    sub_d84abad9[sub_d84abad9.length].field_512 = ext_call.return_data[0]
    sub_d84abad9[sub_d84abad9.length].field_768 = ext_call.return_data[0]
    sub_d84abad9[sub_d84abad9.length].field_1024 = ext_call.return_data[0]
    require ext_code.size(sub_049e03db[sub_049e03db.length])
    call sub_049e03db[sub_049e03db.length].0xb91c4914 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_049e03db[sub_049e03db.length])
    call sub_049e03db[sub_049e03db.length].rewardStartBlock() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_049e03db[sub_049e03db.length])
    call sub_049e03db[sub_049e03db.length].0x1e3024fe with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_049e03db[sub_049e03db.length])
    call sub_049e03db[sub_049e03db.length].0xb83282da with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_049e03db[sub_049e03db.length])
    call sub_049e03db[sub_049e03db.length].0x7b1acc31 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_049e03db[sub_049e03db.length])
    call sub_049e03db[sub_049e03db.length].totalValue() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_049e03db[sub_049e03db.length])
    call sub_049e03db[sub_049e03db.length].0x7b1acc31 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_049e03db[sub_049e03db.length])
    call sub_049e03db[sub_049e03db.length].0x58fc7606 with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_049e03db[sub_049e03db.length])
    call sub_049e03db[sub_049e03db.length].0x7b1acc31 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_049e03db[sub_049e03db.length])
    call sub_049e03db[sub_049e03db.length].0xf99a725c with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit 0xc83390cb: ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[0], sub_049e03db.length, sub_049e03db[sub_049e03db.length]
    create contract with 0 wei
                    code: code.data[6896 len 3858], sub_1e3024fe, sub_b83282da, sub_272a3fe4, REWARD_INTERVAL
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    sub_049e03db.length++
    sub_049e03db[sub_049e03db.length] = address(create.new_address)
    require ext_code.size(address(create.new_address))
    call address(create.new_address).0xb91c4914 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(create.new_address))
    call address(create.new_address).rewardStartBlock() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(create.new_address))
    call address(create.new_address).0x1e3024fe with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(create.new_address))
    call address(create.new_address).0xb83282da with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit 0x5bb0a8f8: ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[0], sub_049e03db.length, address(create.new_address)
}



}
