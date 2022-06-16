contract main {




// =====================  Runtime code  =====================


address owner;
mapping of uint8 stor1;
uint8 stor2;
uint256 stor3;
address sub_0e675d13Address;
mapping of uint256 sub_d239da84;
mapping of uint256 sub_275361a0;
mapping of uint8 stor7;

function sub_0e675d13(?) {
    return sub_0e675d13Address
}

function sub_275361a0(?) {
    require calldata.size - 4 >= 32
    return sub_275361a0[arg1]
}

function isPauser(address arg1) {
    require calldata.size - 4 >= 32
    require arg1
    return bool(stor1[address(arg1)])
}

function paused() {
    return bool(stor2)
}

function owner() {
    return owner
}

function sub_ced7ed2c(?) {
    require calldata.size - 4 >= 32
    return bool(stor7[address(arg1)])
}

function sub_d239da84(?) {
    require calldata.size - 4 >= 32
    return sub_d239da84[arg1 << 240]
}

function _fallback() payable {
    revert
}

function isOwner() {
    return (msg.sender == owner)
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_2e875794(?) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    sub_0e675d13Address = arg1
}

function unpause() {
    require msg.sender
    require stor1[address(msg.sender)]
    require stor2
    stor2 = 0
    emit Unpaused(msg.sender);
}

function pause() {
    require msg.sender
    require stor1[address(msg.sender)]
    require not stor2
    stor2 = 1
    emit Paused(msg.sender);
}

function renouncePauser() {
    require msg.sender
    require stor1[address(msg.sender)]
    stor1[address(msg.sender)] = 0
    emit PauserRemoved(msg.sender);
}

function sub_fae36986(?) {
    require calldata.size - 4 >= 64
    require msg.sender == owner
    stor7[address(arg1)] = uint8(arg2)
    emit 0x46c9694d: address(arg1), arg2
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function addPauser(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender
    require stor1[address(msg.sender)]
    require arg1
    require not stor1[address(arg1)]
    stor1[address(arg1)] = 1
    emit PauserAdded(arg1);
}

function sub_e274e18e(?) payable {
    require calldata.size - 4 >= 64
    require not stor2
    stor3++
    require ext_code.size(sub_0e675d13Address)
    staticcall sub_0e675d13Address.0xfbba7b62 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] > 0
    require stor7[address(msg.sender)]
    sub_d239da84[arg1 << 240] += msg.value
    emit 0x47fc9534: msg.sender, msg.value, block.timestamp, arg1, arg2
    require stor3 == stor3
}

function sub_e5eb3dc5(?) {
    require calldata.size - 4 >= 32
    require ext_code.size(sub_0e675d13Address)
    staticcall sub_0e675d13Address.0xbd78c9e3 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require ext_code.size(sub_0e675d13Address)
    staticcall sub_0e675d13Address.0x410cb3f8 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_0e675d13Address)
    staticcall sub_0e675d13Address.0x1ee2ec93 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if not sub_d239da84[ext_call.return_data[0] << 240]:
        require ext_call.return_data[32] > 0
        require ext_call.return_data[32]
        require sub_275361a0[arg1] <= 0 / ext_call.return_data[32]
        return ((0 / ext_call.return_data[32]) - sub_275361a0[arg1])
    require sub_d239da84[ext_call.return_data[0] << 240]
    require sub_d239da84[ext_call.return_data[0] << 240] * ext_call.return_data[0] / sub_d239da84[ext_call.return_data[0] << 240] == ext_call.return_data[0]
    require ext_call.return_data[32] > 0
    require ext_call.return_data[32]
    require sub_275361a0[arg1] <= sub_d239da84[ext_call.return_data[0] << 240] * ext_call.return_data[0] / ext_call.return_data[32]
    return ((sub_d239da84[ext_call.return_data[0] << 240] * ext_call.return_data[0] / ext_call.return_data[32]) - sub_275361a0[arg1])
}

function sub_56990e65(?) {
    require calldata.size - 4 >= 32
    require not stor2
    stor3++
    require ext_code.size(sub_0e675d13Address)
    staticcall sub_0e675d13Address.0x6352211e with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[12 len 20] == msg.sender
    require ext_code.size(sub_0e675d13Address)
    staticcall sub_0e675d13Address.0xbd78c9e3 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require ext_code.size(sub_0e675d13Address)
    staticcall sub_0e675d13Address.0x410cb3f8 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_0e675d13Address)
    staticcall sub_0e675d13Address.0x1ee2ec93 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if not sub_d239da84[ext_call.return_data[0] << 240]:
        require ext_call.return_data[32] > 0
        require ext_call.return_data[32]
        require sub_275361a0[arg1] <= 0 / ext_call.return_data[32]
        sub_275361a0[arg1] = 0 / ext_call.return_data[32]
        call msg.sender with:
           value (0 / ext_call.return_data[32]) - sub_275361a0[arg1] wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit 0xa2af676e: (0 / ext_call.return_data[32]) - sub_275361a0[arg1], block.timestamp, arg1, msg.sender
    else:
        require sub_d239da84[ext_call.return_data[0] << 240]
        require sub_d239da84[ext_call.return_data[0] << 240] * ext_call.return_data[0] / sub_d239da84[ext_call.return_data[0] << 240] == ext_call.return_data[0]
        require ext_call.return_data[32] > 0
        require ext_call.return_data[32]
        require sub_275361a0[arg1] <= sub_d239da84[ext_call.return_data[0] << 240] * ext_call.return_data[0] / ext_call.return_data[32]
        sub_275361a0[arg1] = sub_d239da84[ext_call.return_data[0] << 240] * ext_call.return_data[0] / ext_call.return_data[32]
        call msg.sender with:
           value (sub_d239da84[ext_call.return_data[0] << 240] * ext_call.return_data[0] / ext_call.return_data[32]) - sub_275361a0[arg1] wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit 0xa2af676e: (sub_d239da84[ext_call.return_data[0] << 240] * ext_call.return_data[0] / ext_call.return_data[32]) - sub_275361a0[arg1], block.timestamp, arg1, msg.sender
    require stor3 == stor3
}

function getWithdrawableBalance(address arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(sub_0e675d13Address)
    staticcall sub_0e675d13Address.0x70a08231 with:
            gas gas_remaining wei
           args arg1
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    idx = mem[96]
    s = 0
    while idx > 0:
        mem[132] = idx - 1
        require ext_code.size(sub_0e675d13Address)
        staticcall sub_0e675d13Address.0x2f745c59 with:
                gas gas_remaining wei
               args address(arg1), idx - 1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_0e675d13Address)
        staticcall sub_0e675d13Address.0xbd78c9e3 with:
                gas gas_remaining wei
               args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        require ext_code.size(sub_0e675d13Address)
        staticcall sub_0e675d13Address.0x410cb3f8 with:
                gas gas_remaining wei
               args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_0e675d13Address)
        staticcall sub_0e675d13Address.0x1ee2ec93 with:
                gas gas_remaining wei
               args ext_call.return_data[0]
        mem[96 len 64] = ext_call.return_data[0 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        if not sub_d239da84[ext_call.return_data[0] << 240]:
            require ext_call.return_data[32] > 0
            require ext_call.return_data[32]
            mem[0] = ext_call.return_data[0]
            mem[32] = 6
            require sub_275361a0[ext_call.return_data[0]] <= 0 / ext_call.return_data[32]
            idx = idx - 1
            s = s + (0 / ext_call.return_data[32]) - sub_275361a0[ext_call.return_data[0]]
            continue 
        require sub_d239da84[ext_call.return_data[0] << 240]
        require sub_d239da84[ext_call.return_data[0] << 240] * ext_call.return_data[0] / sub_d239da84[ext_call.return_data[0] << 240] == ext_call.return_data[0]
        require ext_call.return_data[32] > 0
        require ext_call.return_data[32]
        mem[0] = ext_call.return_data[0]
        mem[32] = 6
        require sub_275361a0[ext_call.return_data[0]] <= sub_d239da84[ext_call.return_data[0] << 240] * ext_call.return_data[0] / ext_call.return_data[32]
        idx = idx - 1
        s = s + (sub_d239da84[ext_call.return_data[0] << 240] * ext_call.return_data[0] / ext_call.return_data[32]) - sub_275361a0[ext_call.return_data[0]]
        continue 
    return s
}

function sub_760b8cc2(?) {
    require not stor2
    stor3++
    require ext_code.size(sub_0e675d13Address)
    staticcall sub_0e675d13Address.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] > 0
    idx = mem[96]
    s = 0
    while idx > 0:
        mem[132] = idx - 1
        require ext_code.size(sub_0e675d13Address)
        staticcall sub_0e675d13Address.0x2f745c59 with:
                gas gas_remaining wei
               args msg.sender, idx - 1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_0e675d13Address)
        staticcall sub_0e675d13Address.0xbd78c9e3 with:
                gas gas_remaining wei
               args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        require ext_code.size(sub_0e675d13Address)
        staticcall sub_0e675d13Address.0x410cb3f8 with:
                gas gas_remaining wei
               args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_0e675d13Address)
        staticcall sub_0e675d13Address.0x1ee2ec93 with:
                gas gas_remaining wei
               args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        if not sub_d239da84[ext_call.return_data[0] << 240]:
            require ext_call.return_data[32] > 0
            require ext_call.return_data[32]
            require sub_275361a0[ext_call.return_data[0]] <= 0 / ext_call.return_data[32]
            mem[0] = ext_call.return_data[0]
            mem[32] = 6
            sub_275361a0[ext_call.return_data[0]] = 0 / ext_call.return_data[32]
            mem[96] = (0 / ext_call.return_data[32]) - sub_275361a0[ext_call.return_data[0]]
            mem[128] = block.timestamp
            emit 0xa2af676e: (0 / ext_call.return_data[32]) - sub_275361a0[ext_call.return_data[0]], block.timestamp, ext_call.return_data[0], msg.sender
            idx = idx - 1
            s = s + (0 / ext_call.return_data[32]) - sub_275361a0[ext_call.return_data[0]]
            continue 
        require sub_d239da84[ext_call.return_data[0] << 240]
        require sub_d239da84[ext_call.return_data[0] << 240] * ext_call.return_data[0] / sub_d239da84[ext_call.return_data[0] << 240] == ext_call.return_data[0]
        require ext_call.return_data[32] > 0
        require ext_call.return_data[32]
        require sub_275361a0[ext_call.return_data[0]] <= sub_d239da84[ext_call.return_data[0] << 240] * ext_call.return_data[0] / ext_call.return_data[32]
        mem[0] = ext_call.return_data[0]
        mem[32] = 6
        sub_275361a0[ext_call.return_data[0]] = sub_d239da84[ext_call.return_data[0] << 240] * ext_call.return_data[0] / ext_call.return_data[32]
        mem[96] = (sub_d239da84[ext_call.return_data[0] << 240] * ext_call.return_data[0] / ext_call.return_data[32]) - sub_275361a0[ext_call.return_data[0]]
        mem[128] = block.timestamp
        emit 0xa2af676e: (sub_d239da84[ext_call.return_data[0] << 240] * ext_call.return_data[0] / ext_call.return_data[32]) - sub_275361a0[ext_call.return_data[0]], block.timestamp, ext_call.return_data[0], msg.sender
        idx = idx - 1
        s = s + (sub_d239da84[ext_call.return_data[0] << 240] * ext_call.return_data[0] / ext_call.return_data[32]) - sub_275361a0[ext_call.return_data[0]]
        continue 
    call msg.sender with:
       value s wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require stor3 == stor3
}



}
