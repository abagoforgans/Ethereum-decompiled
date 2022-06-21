contract main {




// =====================  Runtime code  =====================


array of struct stor0;
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
    return stor0.length
}

function _fallback() payable {
  stop
}

function sub_7a5a2a98(?) {
    require msg.sender == stor0.length
    ETHAddress = arg1
}

function sub_bb005da7(?) {
    require msg.sender == stor0.length
    sub_4e60860eAddress = arg1
}

function setOwner(address arg1) {
    require msg.sender == stor0.length
    if stor0.length == arg1:
        revert with 0, 'Invalid new owner value.'
    if not arg1:
        revert with 0, 'Invalid new owner value.'
    stor0.length = arg1
}

function sub_47833f56(?) {
    require msg.sender == stor0.length
    if botAddress == arg1:
        revert with 0, 'Invalid new bot account value.'
    if not arg1:
        revert with 0, 'Invalid new bot account value.'
    botAddress = arg1
}

function withdraw() {
    require msg.sender == stor0.length
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transferERC20Token(address arg1, address arg2, uint256 arg3) {
    require msg.sender == stor0.length
    require ext_code.size(arg1)
    call arg1.transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_e33437b4(?) {
    mem[128 len arg1.length] = arg1[all]
    require msg.sender == stor0.length
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
    require msg.sender == stor0.length
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
    call arg1.allowance(address arg1, address arg2) with:
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
    if msg.sender == stor0.length:
        mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
        mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
        mem[arg1.length + ceil32(arg1.length) + 128] = 2
        _61 = sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32])
        stor0.length++
        stor0[stor0.length].field_0 = ETHAddress
        stor0.length++
        stor0[stor0.length].field_0 = sub_4e60860eAddress
        stor0.length++
        stor0[stor0.length].field_0 = sub_4e60860eAddress
        require ext_code.size(stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]])
        call stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]].token() with:
             gas gas_remaining wei
        mem[ceil32(arg1.length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        stor0.length++
        stor0[stor0.length].field_0 = address(ext_call.return_data[0])
        mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
        mem[ceil32(arg1.length) + floor32(arg1.length) + 128] = !(256^(-(arg1.length % 32) + 32) - 1) and call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] or 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + floor32(arg1.length) + 128]
        mem[ceil32(arg1.length) + arg1.length + 128] = 3
        stor0.length++
        stor0[stor0.length].field_0 = stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]]
        if not stor0.length:
            require ext_code.size(stor[_61])
            call stor[_61].quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
               value arg2 wei
                 gas gas_remaining wei
                args 96, arg2, arg3, stor0.length
        else:
            mem[ceil32(arg1.length) + 260] = address(stor0.field_0)
            if (32 * stor0.length) + 132 > 164:
                mem[ceil32(arg1.length) + 292] = address(stor0.field_256)
                idx = ceil32(arg1.length) + 292
                s = 1
                while ceil32(arg1.length) + (32 * stor0.length) + 260 > idx + 32:
                    mem[idx + 32] = stor0[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
            require ext_code.size(stor[_61])
            call stor[_61].quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
               value arg2 wei
                 gas gas_remaining wei
                args Array(len=stor0.length, data=mem[ceil32(arg1.length) + 260 len 32 * stor0.length]), arg2, arg3
    else:
        require msg.sender == botAddress
        mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
        mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
        mem[arg1.length + ceil32(arg1.length) + 128] = 2
        _71 = sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32])
        stor0.length++
        stor0[stor0.length].field_0 = ETHAddress
        stor0.length++
        stor0[stor0.length].field_0 = sub_4e60860eAddress
        stor0.length++
        stor0[stor0.length].field_0 = sub_4e60860eAddress
        require ext_code.size(stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]])
        call stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]].token() with:
             gas gas_remaining wei
        mem[ceil32(arg1.length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        stor0.length++
        stor0[stor0.length].field_0 = address(ext_call.return_data[0])
        mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
        mem[ceil32(arg1.length) + floor32(arg1.length) + 128] = !(256^(-(arg1.length % 32) + 32) - 1) and call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] or 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + floor32(arg1.length) + 128]
        mem[ceil32(arg1.length) + arg1.length + 128] = 3
        stor0.length++
        stor0[stor0.length].field_0 = stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]]
        if not stor0.length:
            require ext_code.size(stor[_71])
            call stor[_71].quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
               value arg2 wei
                 gas gas_remaining wei
                args 96, arg2, arg3, stor0.length
        else:
            mem[ceil32(arg1.length) + 260] = address(stor0.field_0)
            if (32 * stor0.length) + 132 > 164:
                mem[ceil32(arg1.length) + 292] = address(stor0.field_256)
                idx = ceil32(arg1.length) + 292
                s = 1
                while ceil32(arg1.length) + (32 * stor0.length) + 260 > idx + 32:
                    mem[idx + 32] = stor0[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
            require ext_code.size(stor[_71])
            call stor[_71].quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
               value arg2 wei
                 gas gas_remaining wei
                args Array(len=stor0.length, data=mem[ceil32(arg1.length) + 260 len 32 * stor0.length]), arg2, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sell(string arg1, uint256 arg2, uint256 arg3) {
    mem[128 len arg1.length] = arg1[all]
    if msg.sender == stor0.length:
        mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
        mem[ceil32(arg1.length) + floor32(arg1.length) + 128] = 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + floor32(arg1.length) + 128] or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] and !(256^(-(arg1.length % 32) + 32) - 1)
        mem[ceil32(arg1.length) + arg1.length + 128] = 2
        _127 = sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32])
        mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
        mem[ceil32(arg1.length) + floor32(arg1.length) + 128] = !(256^(-(arg1.length % 32) + 32) - 1) and call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] or 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + floor32(arg1.length) + 128]
        mem[ceil32(arg1.length) + arg1.length + 128] = 3
        stor0.length++
        stor0[stor0.length].field_0 = stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]]
        require ext_code.size(stor[_127])
        call stor[_127].token() with:
             gas gas_remaining wei
        mem[ceil32(arg1.length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        stor0.length++
        stor0[stor0.length].field_0 = address(ext_call.return_data[0])
        stor0.length++
        stor0[stor0.length].field_0 = sub_4e60860eAddress
        stor0.length++
        stor0[stor0.length].field_0 = sub_4e60860eAddress
        stor0.length++
        stor0[stor0.length].field_0 = ETHAddress
        mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
        mem[ceil32(arg1.length) + floor32(arg1.length) + 128] = 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + floor32(arg1.length) + 128] or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] and !(256^(-(arg1.length % 32) + 32) - 1)
        mem[ceil32(arg1.length) + arg1.length + 128] = 3
        _351 = sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32])
        mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
        mem[ceil32(arg1.length) + floor32(arg1.length) + 128] = 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + floor32(arg1.length) + 128] or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] and !(256^(-(arg1.length % 32) + 32) - 1)
        mem[ceil32(arg1.length) + arg1.length + 128] = 2
        require ext_code.size(stor[_351])
        call stor[_351].allowance(address arg1, address arg2) with:
             gas gas_remaining wei
            args this.address, stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            require ext_code.size(stor[_351])
            call stor[_351].approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]], 1000000000000 * 10^18
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
        else:
            if ext_call.return_data[0] > 0:
                if ext_call.return_data[0] < arg2:
                    require ext_code.size(stor[_351])
                    call stor[_351].approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]], 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor[_351])
                    call stor[_351].approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]], 1000000000000 * 10^18
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
        if not stor0.length:
            require ext_code.size(stor[_127])
            call stor[_127].quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args 96, arg2, arg3, stor0.length
        else:
            mem[ceil32(arg1.length) + 260] = address(stor0.field_0)
            idx = ceil32(arg1.length) + 260
            s = 0
            while ceil32(arg1.length) + (32 * stor0.length) + 260 > idx + 32:
                mem[idx + 32] = stor0[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(stor[_127])
            call stor[_127].quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args Array(len=stor0.length, data=mem[ceil32(arg1.length) + 260 len 32 * stor0.length]), arg2, arg3
    else:
        require msg.sender == botAddress
        mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
        mem[ceil32(arg1.length) + floor32(arg1.length) + 128] = 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + floor32(arg1.length) + 128] or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] and !(256^(-(arg1.length % 32) + 32) - 1)
        mem[ceil32(arg1.length) + arg1.length + 128] = 2
        _133 = sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32])
        mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
        mem[ceil32(arg1.length) + floor32(arg1.length) + 128] = !(256^(-(arg1.length % 32) + 32) - 1) and call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] or 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + floor32(arg1.length) + 128]
        mem[ceil32(arg1.length) + arg1.length + 128] = 3
        stor0.length++
        stor0[stor0.length].field_0 = stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]]
        require ext_code.size(stor[_133])
        call stor[_133].token() with:
             gas gas_remaining wei
        mem[ceil32(arg1.length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        stor0.length++
        stor0[stor0.length].field_0 = address(ext_call.return_data[0])
        stor0.length++
        stor0[stor0.length].field_0 = sub_4e60860eAddress
        stor0.length++
        stor0[stor0.length].field_0 = sub_4e60860eAddress
        stor0.length++
        stor0[stor0.length].field_0 = ETHAddress
        mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
        mem[ceil32(arg1.length) + floor32(arg1.length) + 128] = 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + floor32(arg1.length) + 128] or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] and !(256^(-(arg1.length % 32) + 32) - 1)
        mem[ceil32(arg1.length) + arg1.length + 128] = 3
        _357 = sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32])
        mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
        mem[ceil32(arg1.length) + floor32(arg1.length) + 128] = 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + floor32(arg1.length) + 128] or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] and !(256^(-(arg1.length % 32) + 32) - 1)
        mem[ceil32(arg1.length) + arg1.length + 128] = 2
        require ext_code.size(stor[_357])
        call stor[_357].allowance(address arg1, address arg2) with:
             gas gas_remaining wei
            args this.address, stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            require ext_code.size(stor[_357])
            call stor[_357].approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]], 1000000000000 * 10^18
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
        else:
            if ext_call.return_data[0] > 0:
                if ext_call.return_data[0] < arg2:
                    require ext_code.size(stor[_357])
                    call stor[_357].approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]], 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor[_357])
                    call stor[_357].approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]], 1000000000000 * 10^18
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
        if not stor0.length:
            require ext_code.size(stor[_133])
            call stor[_133].quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args 96, arg2, arg3, stor0.length
        else:
            mem[ceil32(arg1.length) + 260] = address(stor0.field_0)
            idx = ceil32(arg1.length) + 260
            s = 0
            while ceil32(arg1.length) + (32 * stor0.length) + 260 > idx + 32:
                mem[idx + 32] = stor0[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(stor[_133])
            call stor[_133].quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args Array(len=stor0.length, data=mem[ceil32(arg1.length) + 260 len 32 * stor0.length]), arg2, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}



}
