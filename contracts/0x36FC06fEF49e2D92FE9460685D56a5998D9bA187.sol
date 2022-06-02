contract main {




// =====================  Runtime code  =====================


uint256 sub_72d37064;
uint256 sub_d7ed26d5;
address owner;
address cfoAddress;
mapping of struct sub_c4dca422;
mapping of uint64 userInfo;
address tokenAddress;

function cfo() {
    return cfoAddress
}

function getUserInfo() {
    return userInfo[msg.sender]
}

function sub_72d37064(?) {
    return sub_72d37064
}

function owner() {
    return owner
}

function sub_c4dca422(?) {
    mem[168] = sub_c4dca422[uint64(arg1, 0)][3].field_0
    idx = 168
    s = 0
    while sub_c4dca422[uint64(arg1, 0)][3].length + 136 > idx:
        mem[idx + 32] = sub_c4dca422[uint64(arg1, 0)][s + 3].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return sub_c4dca422[uint64(arg1, 0)].field_0, 
           sub_c4dca422[uint64(arg1, 0)].field_0,
           sub_c4dca422[uint64(arg1, 0)].field_0,
           sub_c4dca422[uint64(arg1, 0)].field_256,
           sub_c4dca422[uint64(arg1, 0)].field_512,
           Array(len=sub_c4dca422[uint64(arg1, 0)][3].length, data=mem[168 len sub_c4dca422[uint64(arg1, 0)][3].length]),
           sub_c4dca422[uint64(arg1, 0)].field_1024
}

function sub_d7ed26d5(?) {
    return sub_d7ed26d5
}

function token() {
    return tokenAddress
}

function kill() {
    if owner != msg.sender:
        revert with 0, 'Only owner could use this metho'
    selfdestruct(owner)
}

function _fallback() payable {
  stop
}

function sub_eca19171(?) {
    userInfo[msg.sender] = arg1
    return 1
}

function setOwner(address arg1) {
    if owner != msg.sender:
        revert with 0, 'Only owner could use this metho'
    owner = arg1
}

function setCfo(address arg1) {
    if owner != msg.sender:
        revert with 0, 'Only owner could use this metho'
    cfoAddress = arg1
}

function setToken(address arg1) {
    if owner != msg.sender:
        revert with 0, 'Only owner could use this metho'
    tokenAddress = arg1
    return 1
}

function getBalance() {
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return eth.balance(this.address), ext_call.return_data[0]
}

function withdrawEth(address arg1, uint256 arg2) {
    if cfoAddress != msg.sender:
        revert with 0, 'dOnly cfo could use this method'
    sub_72d37064 = eth.balance(this.address)
    if arg2 > eth.balance(this.address):
        revert with 0, 'Not enough ETH to send'
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function sub_2a27f047(?) payable {
    if arg3 != msg.value:
        revert with 0, 'Not enough eth to complete the order'
    if sub_c4dca422[uint64(arg1, 0)].field_1024 > 0:
        revert with 0, 'the order is exist'
    sub_c4dca422[uint64(arg1, 0)].field_0 = arg1
    sub_c4dca422[uint64(arg1, 0)].field_64 = 1
    sub_c4dca422[uint64(arg1, 0)].field_72 = Mask(184, 0, msg.sender)
    sub_c4dca422[uint64(arg1, 0)].field_256 = 0
    sub_c4dca422[uint64(arg1, 0)].field_256 = block.timestamp
    sub_c4dca422[uint64(arg1, 0)].field_512 = arg3
    sub_c4dca422[uint64(arg1, 0)][3][].field_0 = Array(len=arg2.length, data=arg2[all])
    sub_c4dca422[uint64(arg1, 0)].field_1024 = 1
    return 1
}

function sub_06951fe2(?) {
    if cfoAddress != msg.sender:
        revert with 0, 'dOnly cfo could use this method'
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    sub_d7ed26d5 = ext_call.return_data[0]
    if arg2 > ext_call.return_data[0]:
        revert with 0, 'Not enough token to send'
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return 1
}

function sub_58200802(?) {
    if sub_c4dca422[uint64(arg1, 0)].field_1024 > 0:
        revert with 0, 'the order is exist'
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(tokenAddress)
    call tokenAddress.0x32571984 with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg3:
        revert with 0, 'Not enough token to complete the order'
    require ext_code.size(tokenAddress)
    call tokenAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    sub_c4dca422[uint64(arg1, 0)].field_0 = arg1
    sub_c4dca422[uint64(arg1, 0)].field_64 = 2
    sub_c4dca422[uint64(arg1, 0)].field_72 = Mask(184, 0, msg.sender)
    sub_c4dca422[uint64(arg1, 0)].field_256 = 0
    sub_c4dca422[uint64(arg1, 0)].field_256 = block.timestamp
    sub_c4dca422[uint64(arg1, 0)].field_512 = arg3
    sub_c4dca422[uint64(arg1, 0)][3][].field_0 = Array(len=arg2.length, data=arg2[all])
    sub_c4dca422[uint64(arg1, 0)].field_1024 = 1
    return 1
}

function sub_c5c2bf13(?) {
    if cfoAddress != msg.sender:
        revert with 0, 'dOnly cfo could use this method'
    if sub_c4dca422[uint64(arg1, 0)].field_1024 != 1:
        if sub_c4dca422[uint64(arg1, 0)].field_1024 != 2:
            revert with 0, 'can not cancel the order'
    if 1 == sub_c4dca422[uint64(arg1, 0)].field_64:
        sub_72d37064 = eth.balance(this.address)
        if arg2 > eth.balance(this.address):
            revert with 0, 'Not enough eth to send'
        call sub_c4dca422[uint64(arg1, 0)].field_72 with:
           value arg2 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        sub_c4dca422[uint64(arg1, 0)].field_1024 = 4
    else:
        if 2 == sub_c4dca422[uint64(arg1, 0)].field_64:
            require ext_code.size(tokenAddress)
            call tokenAddress.0x70a08231 with:
                 gas gas_remaining wei
                args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            sub_d7ed26d5 = ext_call.return_data[0]
            if arg2 > ext_call.return_data[0]:
                revert with 0, 'Not enough token to send'
            require ext_code.size(tokenAddress)
            call tokenAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args sub_c4dca422[uint64(arg1, 0)].field_0, arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            sub_c4dca422[uint64(arg1, 0)].field_1024 = 4
    return 1
}

function sub_72beb178(?) {
    if cfoAddress != msg.sender:
        revert with 0, 'dOnly cfo could use this method'
    if sub_c4dca422[uint64(arg1, 0)].field_1024 != 1:
        if sub_c4dca422[uint64(arg1, 0)].field_1024 != 2:
            revert with 0, 'can not bargain the order'
    if sub_c4dca422[uint64(arg1, 0)].field_64 != 1:
        if 2 == sub_c4dca422[uint64(arg1, 0)].field_64:
            sub_72d37064 = eth.balance(this.address)
            if arg2 > eth.balance(this.address):
                revert with 0, 'Not enough eth to send'
            call sub_c4dca422[uint64(arg1, 0)].field_72 with:
               value arg2 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if 2 == arg3:
                sub_c4dca422[uint64(arg1, 0)].field_1024 = 2
            else:
                if 1 == arg3:
                    sub_c4dca422[uint64(arg1, 0)].field_1024 = 3
    else:
        require ext_code.size(tokenAddress)
        call tokenAddress.0x70a08231 with:
             gas gas_remaining wei
            args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        sub_d7ed26d5 = ext_call.return_data[0]
        if arg2 > ext_call.return_data[0]:
            revert with 0, 'Not enough token to send'
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args sub_c4dca422[uint64(arg1, 0)].field_0, arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if arg3 == 2:
            sub_c4dca422[uint64(arg1, 0)].field_1024 = 2
        else:
            if 1 == arg3:
                sub_c4dca422[uint64(arg1, 0)].field_1024 = 3
    return 1
}



}
