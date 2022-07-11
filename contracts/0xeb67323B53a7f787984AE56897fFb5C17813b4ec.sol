contract main {




// =====================  Runtime code  =====================


address _owner;
address stor1;
address tokenAddress;
mapping of uint256 investors;
uint256 endTime;
uint256 sub_d4f2cd16;

function endTime() {
    return endTime
}

function _owner() {
    return _owner
}

function sub_d4f2cd16(?) {
    return sub_d4f2cd16
}

function Investors(address arg1) {
    require calldata.size - 4 >= 32
    return investors[arg1]
}

function token() {
    return tokenAddress
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == _owner
    require arg1
    emit OwnershipTransferred(_owner, arg1);
    _owner = arg1
}

function sub_db087e69(?) {
    require calldata.size - 4 >= 32
    require ext_code.size(stor1)
    staticcall stor1.0x5e534bfc with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor1)
    if ext_call.return_data[0] > 1:
        staticcall stor1.0x5e534bfc with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= 1:
            return 0
    else:
        staticcall stor1.0x93841f0c with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require investors[address(msg.sender)] + arg1 >= investors[address(msg.sender)]
        if investors[address(msg.sender)] + arg1 > ext_call.return_data[0]:
            require ext_code.size(stor1)
            staticcall stor1.0x5e534bfc with:
                    gas gas_remaining wei
                   args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] <= 1:
                return 0
    return 1
}

function buyTokens() payable {
    require ext_code.size(stor1)
    staticcall stor1.0xd0ca0c25 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require not ext_call.return_data[0]
    if msg.value <= 0:
        revert with 0, 'empty'
    require ext_code.size(stor1)
    staticcall stor1.0x5e534bfc with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor1)
    if ext_call.return_data[0] > 1:
        staticcall stor1.0x5e534bfc with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= 1:
            revert with 0, 'Control Access Denied'
    else:
        staticcall stor1.0x93841f0c with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require investors[address(msg.sender)] + msg.value >= investors[address(msg.sender)]
        if investors[address(msg.sender)] + msg.value > ext_call.return_data[0]:
            require ext_code.size(stor1)
            staticcall stor1.0x5e534bfc with:
                    gas gas_remaining wei
                   args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] <= 1:
                revert with 0, 'Control Access Denied'
    if block.timestamp > endTime:
        revert with 0, 'ICO not running'
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining wei
        args msg.sender, msg.value
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require investors[address(msg.sender)] + msg.value >= investors[address(msg.sender)]
    investors[address(msg.sender)] += msg.value
    require sub_d4f2cd16 + msg.value >= sub_d4f2cd16
    sub_d4f2cd16 += msg.value
    call _owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0xdc2348e8: msg.sender, msg.value
}

function _fallback() payable {
    require ext_code.size(stor1)
    staticcall stor1.0xd0ca0c25 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require not ext_call.return_data[0]
    if msg.value <= 0:
        revert with 0, 'empty'
    require ext_code.size(stor1)
    staticcall stor1.0x5e534bfc with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor1)
    if ext_call.return_data[0] > 1:
        staticcall stor1.0x5e534bfc with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= 1:
            revert with 0, 'Control Access Denied'
    else:
        staticcall stor1.0x93841f0c with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require investors[address(msg.sender)] + msg.value >= investors[address(msg.sender)]
        if investors[address(msg.sender)] + msg.value > ext_call.return_data[0]:
            require ext_code.size(stor1)
            staticcall stor1.0x5e534bfc with:
                    gas gas_remaining wei
                   args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] <= 1:
                revert with 0, 'Control Access Denied'
    if block.timestamp > endTime:
        revert with 0, 'ICO not running'
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining wei
        args msg.sender, msg.value
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require investors[address(msg.sender)] + msg.value >= investors[address(msg.sender)]
    investors[address(msg.sender)] += msg.value
    require sub_d4f2cd16 + msg.value >= sub_d4f2cd16
    sub_d4f2cd16 += msg.value
    call _owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0xdc2348e8: msg.sender, msg.value
}



}
