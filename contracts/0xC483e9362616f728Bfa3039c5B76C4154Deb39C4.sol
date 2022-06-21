contract main {




// =====================  Runtime code  =====================


address owner;
address botAddress;
address ETHAddress;
address sub_4e60860eAddress;
mapping of address stor99;

function bot() {
    return botAddress
}

function sub_4e60860e(?) {
    return sub_4e60860eAddress
}

function ETH() {
    return ETHAddress
}

function owner() {
    return owner
}

function _fallback() payable {
  stop
}

function sub_7a5a2a98(?) {
    require msg.sender == owner
    ETHAddress = arg1
}

function sub_bb005da7(?) {
    require msg.sender == owner
    sub_4e60860eAddress = arg1
}

function setOwner(address arg1) {
    require msg.sender == owner
    if owner == arg1:
        revert with 0, 'Invalid new owner value.'
    if not arg1:
        revert with 0, 'Invalid new owner value.'
    owner = arg1
}

function sub_47833f56(?) {
    require msg.sender == owner
    if botAddress == arg1:
        revert with 0, 'Invalid new bot account value.'
    if not arg1:
        revert with 0, 'Invalid new bot account value.'
    botAddress = arg1
}

function withdraw() {
    require msg.sender == owner
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transferERC20Token(address arg1, address arg2, uint256 arg3) {
    require msg.sender == owner
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_e33437b4(?) {
    mem[128 len arg1.length] = arg1[all]
    require msg.sender == owner
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + 128] = 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + floor32(arg1.length) + 128] or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] and !(256^(-(arg1.length % 32) + 32) - 1)
    mem[ceil32(arg1.length) + arg1.length + 128] = 2
    stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]] = arg2
}

function sub_053f3ed6(?) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + 128] = 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + floor32(arg1.length) + 128] or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] and !(256^(-(arg1.length % 32) + 32) - 1)
    mem[ceil32(arg1.length) + arg1.length + 128] = 3
    mem[ceil32(arg1.length) + 128] = stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]]
    return memory
      from ceil32(arg1.length) + 128
       len 32
}

function sub_51bc308b(?) {
    mem[128 len arg1.length] = arg1[all]
    if arg1.length < 32:
        mem[ceil32(arg1.length) + 128] = 256^(-arg1.length + 32) - 1 and mem[ceil32(arg1.length) + 128] or mem[128] and !(256^(-arg1.length + 32) - 1)
    else:
        mem[ceil32(arg1.length) + 128] = mem[128]
        mem[ceil32(arg1.length) + 160 len floor32(arg1.length - 32)] = mem[160 len floor32(arg1.length - 32)]
        mem[ceil32(arg1.length) + floor32(arg1.length - 32) + 160] = 256^(-arg1.length + floor32(arg1.length - 32) + 64) - 1 and mem[ceil32(arg1.length) + floor32(arg1.length - 32) + 160] or mem[floor32(arg1.length - 32) + 160] and !(256^(-arg1.length + floor32(arg1.length - 32) + 64) - 1)
    mem[ceil32(arg1.length) + arg1.length + 128] = 2
    mem[ceil32(arg1.length) + 128] = stor[sha3(mem[ceil32(arg1.length) + 128 len arg1.length + 32])]
    return memory
      from ceil32(arg1.length) + 128
       len 32
}

function sub_d863d544(?) {
    mem[128 len arg1.length] = arg1[all]
    require msg.sender == owner
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + 128] = 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + floor32(arg1.length) + 128] or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] and !(256^(-(arg1.length % 32) + 32) - 1)
    mem[ceil32(arg1.length) + arg1.length + 128] = 2
    stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]] = arg3
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + 128] = 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + floor32(arg1.length) + 128] or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] and !(256^(-(arg1.length % 32) + 32) - 1)
    mem[ceil32(arg1.length) + arg1.length + 128] = 3
    stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]] = arg2
}

function ensureAllowance(address arg1, address arg2, uint256 arg3) {
    require ext_code.size(arg1)
    call arg1.0xdd62ed3e with:
         gas gas_remaining wei
        args this.address, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        require ext_code.size(arg1)
        call arg1.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg2), 1000000000000 * 10^18
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    else:
        if ext_call.return_data[0] > 0:
            if ext_call.return_data[0] < arg3:
                require ext_code.size(arg1)
                call arg1.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(arg2), 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(arg1)
                call arg1.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(arg2), 1000000000000 * 10^18
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
}

function buy(string arg1, uint256 arg2, uint256 arg3) {
    mem[128 len arg1.length] = arg1[all]
    if msg.sender == owner:
        mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
        mem[ceil32(arg1.length) + floor32(arg1.length) + 128] = 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + floor32(arg1.length) + 128] or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] and !(256^(-(arg1.length % 32) + 32) - 1)
        mem[ceil32(arg1.length) + arg1.length + 128] = 2
        _55 = sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32])
        mem[ceil32(arg1.length) + 132] = ETHAddress
        mem[ceil32(arg1.length) + 164] = sub_4e60860eAddress
        mem[ceil32(arg1.length) + 196] = arg2
        mem[ceil32(arg1.length) + 228] = 1
        require ext_code.size(stor[_55])
        call stor[_55].convert(address arg1, address arg2, uint256 arg3, uint256 arg4) with:
             gas gas_remaining wei
            args ETHAddress, sub_4e60860eAddress, arg2, 1
        mem[ceil32(arg1.length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
        mem[ceil32(arg1.length) + floor32(arg1.length) + 128] = 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + floor32(arg1.length) + 128] or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] and !(256^(-(arg1.length % 32) + 32) - 1)
        mem[ceil32(arg1.length) + arg1.length + 128] = 2
        _101 = sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32])
        mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
        mem[ceil32(arg1.length) + floor32(arg1.length) + 128] = 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + floor32(arg1.length) + 128] or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] and !(256^(-(arg1.length % 32) + 32) - 1)
        mem[ceil32(arg1.length) + arg1.length + 128] = 3
        require ext_code.size(stor[_101])
        call stor[_101].convert(address arg1, address arg2, uint256 arg3, uint256 arg4) with:
             gas gas_remaining wei
            args sub_4e60860eAddress, stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]], ext_call.return_data[0], arg3
    else:
        require msg.sender == botAddress
        mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
        mem[ceil32(arg1.length) + floor32(arg1.length) + 128] = 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + floor32(arg1.length) + 128] or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] and !(256^(-(arg1.length % 32) + 32) - 1)
        mem[ceil32(arg1.length) + arg1.length + 128] = 2
        _61 = sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32])
        mem[ceil32(arg1.length) + 132] = ETHAddress
        mem[ceil32(arg1.length) + 164] = sub_4e60860eAddress
        mem[ceil32(arg1.length) + 196] = arg2
        mem[ceil32(arg1.length) + 228] = 1
        require ext_code.size(stor[_61])
        call stor[_61].convert(address arg1, address arg2, uint256 arg3, uint256 arg4) with:
             gas gas_remaining wei
            args ETHAddress, sub_4e60860eAddress, arg2, 1
        mem[ceil32(arg1.length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
        mem[ceil32(arg1.length) + floor32(arg1.length) + 128] = 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + floor32(arg1.length) + 128] or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] and !(256^(-(arg1.length % 32) + 32) - 1)
        mem[ceil32(arg1.length) + arg1.length + 128] = 2
        _107 = sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32])
        mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
        mem[ceil32(arg1.length) + floor32(arg1.length) + 128] = 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + floor32(arg1.length) + 128] or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] and !(256^(-(arg1.length % 32) + 32) - 1)
        mem[ceil32(arg1.length) + arg1.length + 128] = 3
        require ext_code.size(stor[_107])
        call stor[_107].convert(address arg1, address arg2, uint256 arg3, uint256 arg4) with:
             gas gas_remaining wei
            args sub_4e60860eAddress, stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]], ext_call.return_data[0], arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sell(string arg1, uint256 arg2, uint256 arg3) {
    mem[128 len arg1.length] = arg1[all]
    if msg.sender == owner:
        mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
        mem[ceil32(arg1.length) + floor32(arg1.length) + 128] = 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + floor32(arg1.length) + 128] or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] and !(256^(-(arg1.length % 32) + 32) - 1)
        mem[ceil32(arg1.length) + arg1.length + 128] = 3
        _257 = sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32])
        mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
        mem[ceil32(arg1.length) + floor32(arg1.length) + 128] = 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + floor32(arg1.length) + 128] or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] and !(256^(-(arg1.length % 32) + 32) - 1)
        mem[ceil32(arg1.length) + arg1.length + 128] = 2
        _505 = sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32])
        mem[ceil32(arg1.length) + 132] = this.address
        mem[ceil32(arg1.length) + 164] = stor[_505]
        require ext_code.size(stor[_257])
        call stor[_257].0xdd62ed3e with:
             gas gas_remaining wei
            args this.address, stor[_505]
        mem[ceil32(arg1.length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            mem[ceil32(arg1.length) + 132] = stor[_505]
            mem[ceil32(arg1.length) + 164] = 1000000000000 * 10^18
            require ext_code.size(stor[_257])
            call stor[_257].approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args stor[_505], 1000000000000 * 10^18
            mem[ceil32(arg1.length) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
            mem[ceil32(arg1.length) + floor32(arg1.length) + 128] = 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + floor32(arg1.length) + 128] or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] and !(256^(-(arg1.length % 32) + 32) - 1)
            mem[ceil32(arg1.length) + arg1.length + 128] = 2
            _759 = sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32])
            mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
            mem[ceil32(arg1.length) + floor32(arg1.length) + 128] = 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + floor32(arg1.length) + 128] or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] and !(256^(-(arg1.length % 32) + 32) - 1)
            mem[ceil32(arg1.length) + arg1.length + 128] = 3
            _943 = sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32])
            mem[ceil32(arg1.length) + 132] = stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]]
            mem[ceil32(arg1.length) + 164] = sub_4e60860eAddress
            mem[ceil32(arg1.length) + 196] = arg2
            mem[ceil32(arg1.length) + 228] = 1
            require ext_code.size(stor[_759])
            call stor[_759].convert(address arg1, address arg2, uint256 arg3, uint256 arg4) with:
                 gas gas_remaining wei
                args stor[_943], sub_4e60860eAddress, arg2, 1
        else:
            if ext_call.return_data[0] <= 0:
                mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                mem[ceil32(arg1.length) + floor32(arg1.length) + 128] = 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + floor32(arg1.length) + 128] or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] and !(256^(-(arg1.length % 32) + 32) - 1)
                mem[ceil32(arg1.length) + arg1.length + 128] = 2
                _741 = sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32])
                mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                mem[ceil32(arg1.length) + floor32(arg1.length) + 128] = 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + floor32(arg1.length) + 128] or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] and !(256^(-(arg1.length % 32) + 32) - 1)
                mem[ceil32(arg1.length) + arg1.length + 128] = 3
                _925 = sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32])
                mem[ceil32(arg1.length) + 132] = stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]]
                mem[ceil32(arg1.length) + 164] = sub_4e60860eAddress
                mem[ceil32(arg1.length) + 196] = arg2
                mem[ceil32(arg1.length) + 228] = 1
                require ext_code.size(stor[_741])
                call stor[_741].convert(address arg1, address arg2, uint256 arg3, uint256 arg4) with:
                     gas gas_remaining wei
                    args stor[_925], sub_4e60860eAddress, arg2, 1
            else:
                if ext_call.return_data[0] >= arg2:
                    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                    mem[ceil32(arg1.length) + floor32(arg1.length) + 128] = 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + floor32(arg1.length) + 128] or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] and !(256^(-(arg1.length % 32) + 32) - 1)
                    mem[ceil32(arg1.length) + arg1.length + 128] = 2
                    _747 = sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32])
                    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                    mem[ceil32(arg1.length) + floor32(arg1.length) + 128] = 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + floor32(arg1.length) + 128] or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] and !(256^(-(arg1.length % 32) + 32) - 1)
                    mem[ceil32(arg1.length) + arg1.length + 128] = 3
                    _931 = sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32])
                    mem[ceil32(arg1.length) + 132] = stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]]
                    mem[ceil32(arg1.length) + 164] = sub_4e60860eAddress
                    mem[ceil32(arg1.length) + 196] = arg2
                    mem[ceil32(arg1.length) + 228] = 1
                    require ext_code.size(stor[_747])
                    call stor[_747].convert(address arg1, address arg2, uint256 arg3, uint256 arg4) with:
                         gas gas_remaining wei
                        args stor[_931], sub_4e60860eAddress, arg2, 1
                else:
                    require ext_code.size(stor[_257])
                    call stor[_257].approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stor[_505], 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[ceil32(arg1.length) + 132] = stor[_505]
                    mem[ceil32(arg1.length) + 164] = 1000000000000 * 10^18
                    require ext_code.size(stor[_257])
                    call stor[_257].approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stor[_505], 1000000000000 * 10^18
                    mem[ceil32(arg1.length) + 128] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                    mem[ceil32(arg1.length) + floor32(arg1.length) + 128] = 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + floor32(arg1.length) + 128] or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] and !(256^(-(arg1.length % 32) + 32) - 1)
                    mem[ceil32(arg1.length) + arg1.length + 128] = 2
                    _753 = sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32])
                    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                    mem[ceil32(arg1.length) + floor32(arg1.length) + 128] = 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + floor32(arg1.length) + 128] or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] and !(256^(-(arg1.length % 32) + 32) - 1)
                    mem[ceil32(arg1.length) + arg1.length + 128] = 3
                    _937 = sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32])
                    mem[ceil32(arg1.length) + 132] = stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]]
                    mem[ceil32(arg1.length) + 164] = sub_4e60860eAddress
                    mem[ceil32(arg1.length) + 196] = arg2
                    mem[ceil32(arg1.length) + 228] = 1
                    require ext_code.size(stor[_753])
                    call stor[_753].convert(address arg1, address arg2, uint256 arg3, uint256 arg4) with:
                         gas gas_remaining wei
                        args stor[_937], sub_4e60860eAddress, arg2, 1
    else:
        require msg.sender == botAddress
        mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
        mem[ceil32(arg1.length) + floor32(arg1.length) + 128] = 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + floor32(arg1.length) + 128] or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] and !(256^(-(arg1.length % 32) + 32) - 1)
        mem[ceil32(arg1.length) + arg1.length + 128] = 3
        _263 = sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32])
        mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
        mem[ceil32(arg1.length) + floor32(arg1.length) + 128] = 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + floor32(arg1.length) + 128] or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] and !(256^(-(arg1.length % 32) + 32) - 1)
        mem[ceil32(arg1.length) + arg1.length + 128] = 2
        _510 = sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32])
        mem[ceil32(arg1.length) + 132] = this.address
        mem[ceil32(arg1.length) + 164] = stor[_510]
        require ext_code.size(stor[_263])
        call stor[_263].0xdd62ed3e with:
             gas gas_remaining wei
            args this.address, stor[_510]
        mem[ceil32(arg1.length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            mem[ceil32(arg1.length) + 132] = stor[_510]
            mem[ceil32(arg1.length) + 164] = 1000000000000 * 10^18
            require ext_code.size(stor[_263])
            call stor[_263].approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args stor[_510], 1000000000000 * 10^18
            mem[ceil32(arg1.length) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
            mem[ceil32(arg1.length) + floor32(arg1.length) + 128] = 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + floor32(arg1.length) + 128] or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] and !(256^(-(arg1.length % 32) + 32) - 1)
            mem[ceil32(arg1.length) + arg1.length + 128] = 2
            _783 = sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32])
            mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
            mem[ceil32(arg1.length) + floor32(arg1.length) + 128] = 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + floor32(arg1.length) + 128] or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] and !(256^(-(arg1.length % 32) + 32) - 1)
            mem[ceil32(arg1.length) + arg1.length + 128] = 3
            _967 = sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32])
            mem[ceil32(arg1.length) + 132] = stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]]
            mem[ceil32(arg1.length) + 164] = sub_4e60860eAddress
            mem[ceil32(arg1.length) + 196] = arg2
            mem[ceil32(arg1.length) + 228] = 1
            require ext_code.size(stor[_783])
            call stor[_783].convert(address arg1, address arg2, uint256 arg3, uint256 arg4) with:
                 gas gas_remaining wei
                args stor[_967], sub_4e60860eAddress, arg2, 1
        else:
            if ext_call.return_data[0] <= 0:
                mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                mem[ceil32(arg1.length) + floor32(arg1.length) + 128] = 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + floor32(arg1.length) + 128] or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] and !(256^(-(arg1.length % 32) + 32) - 1)
                mem[ceil32(arg1.length) + arg1.length + 128] = 2
                _765 = sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32])
                mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                mem[ceil32(arg1.length) + floor32(arg1.length) + 128] = 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + floor32(arg1.length) + 128] or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] and !(256^(-(arg1.length % 32) + 32) - 1)
                mem[ceil32(arg1.length) + arg1.length + 128] = 3
                _949 = sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32])
                mem[ceil32(arg1.length) + 132] = stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]]
                mem[ceil32(arg1.length) + 164] = sub_4e60860eAddress
                mem[ceil32(arg1.length) + 196] = arg2
                mem[ceil32(arg1.length) + 228] = 1
                require ext_code.size(stor[_765])
                call stor[_765].convert(address arg1, address arg2, uint256 arg3, uint256 arg4) with:
                     gas gas_remaining wei
                    args stor[_949], sub_4e60860eAddress, arg2, 1
            else:
                if ext_call.return_data[0] >= arg2:
                    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                    mem[ceil32(arg1.length) + floor32(arg1.length) + 128] = 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + floor32(arg1.length) + 128] or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] and !(256^(-(arg1.length % 32) + 32) - 1)
                    mem[ceil32(arg1.length) + arg1.length + 128] = 2
                    _771 = sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32])
                    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                    mem[ceil32(arg1.length) + floor32(arg1.length) + 128] = 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + floor32(arg1.length) + 128] or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] and !(256^(-(arg1.length % 32) + 32) - 1)
                    mem[ceil32(arg1.length) + arg1.length + 128] = 3
                    _955 = sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32])
                    mem[ceil32(arg1.length) + 132] = stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]]
                    mem[ceil32(arg1.length) + 164] = sub_4e60860eAddress
                    mem[ceil32(arg1.length) + 196] = arg2
                    mem[ceil32(arg1.length) + 228] = 1
                    require ext_code.size(stor[_771])
                    call stor[_771].convert(address arg1, address arg2, uint256 arg3, uint256 arg4) with:
                         gas gas_remaining wei
                        args stor[_955], sub_4e60860eAddress, arg2, 1
                else:
                    require ext_code.size(stor[_263])
                    call stor[_263].approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stor[_510], 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[ceil32(arg1.length) + 132] = stor[_510]
                    mem[ceil32(arg1.length) + 164] = 1000000000000 * 10^18
                    require ext_code.size(stor[_263])
                    call stor[_263].approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stor[_510], 1000000000000 * 10^18
                    mem[ceil32(arg1.length) + 128] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                    mem[ceil32(arg1.length) + floor32(arg1.length) + 128] = 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + floor32(arg1.length) + 128] or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] and !(256^(-(arg1.length % 32) + 32) - 1)
                    mem[ceil32(arg1.length) + arg1.length + 128] = 2
                    _777 = sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32])
                    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                    mem[ceil32(arg1.length) + floor32(arg1.length) + 128] = 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + floor32(arg1.length) + 128] or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] and !(256^(-(arg1.length % 32) + 32) - 1)
                    mem[ceil32(arg1.length) + arg1.length + 128] = 3
                    _961 = sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32])
                    mem[ceil32(arg1.length) + 132] = stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]]
                    mem[ceil32(arg1.length) + 164] = sub_4e60860eAddress
                    mem[ceil32(arg1.length) + 196] = arg2
                    mem[ceil32(arg1.length) + 228] = 1
                    require ext_code.size(stor[_777])
                    call stor[_777].convert(address arg1, address arg2, uint256 arg3, uint256 arg4) with:
                         gas gas_remaining wei
                        args stor[_961], sub_4e60860eAddress, arg2, 1
    mem[ceil32(arg1.length) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + 128] = 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + floor32(arg1.length) + 128] or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] and !(256^(-(arg1.length % 32) + 32) - 1)
    mem[ceil32(arg1.length) + arg1.length + 128] = 2
    require ext_code.size(stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]])
    call stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]].convert(address arg1, address arg2, uint256 arg3, uint256 arg4) with:
         gas gas_remaining wei
        args sub_4e60860eAddress, ETHAddress, ext_call.return_data[0], arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}



}
