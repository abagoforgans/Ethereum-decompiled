contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - setFreezing(address arg1, uint256 arg2, uint256 arg3, uint8 arg4)
#  - transfer(address arg1, uint256 arg2)
#  - transferAndFreezing(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint8 arg5)
#  - clearExpiredFreezing(address arg1)
#
address authorityAddress;
uint8 stor1; offset 160
address owner;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
array of struct freezingBalanceNumberOf;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function freezingBalanceNumberOf(address arg1) {
    return freezingBalanceNumberOf[address(arg1)].field_0
}

function decimals() {
    return decimals
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function stopped() {
    return bool(stor1)
}

function freezingBalanceInfoOf(address arg1, uint256 arg2) {
    require arg2 < freezingBalanceNumberOf[address(arg1)].field_0
    require arg2 < freezingBalanceNumberOf[address(arg1)].field_0
    require arg2 < freezingBalanceNumberOf[address(arg1)].field_0
    return freezingBalanceNumberOf[address(arg1)][arg2].field_0, 
           freezingBalanceNumberOf[address(arg1)][arg2].field_256,
           freezingBalanceNumberOf[address(arg1)][arg2].field_512
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function authority() {
    return authorityAddress
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() {
    revert
}

function approve(address arg1, uint256 arg2) {
    require not stor1
    require calldata.size >= 68
    if arg2:
        require not allowance[address(msg.sender)][address(arg1)]
    require arg2 < totalSupply
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function setOwner(address arg1) {
    if this.address != msg.sender:
        if owner != msg.sender:
            require authorityAddress
            require ext_code.size(authorityAddress)
            call authorityAddress.canCall(address arg1, address arg2, bytes4 arg3) with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), call.func_hash
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
    owner = arg1
    emit LogSetOwner(arg1);
}

function setName(string arg1) {
    if this.address != msg.sender:
        if owner != msg.sender:
            require authorityAddress
            require ext_code.size(authorityAddress)
            call authorityAddress.canCall(address arg1, address arg2, bytes4 arg3) with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), call.func_hash
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
    name[] = Array(len=arg1.length, data=arg1[all])
}

function setAuthority(address arg1) {
    if this.address != msg.sender:
        if owner != msg.sender:
            require authorityAddress
            require ext_code.size(authorityAddress)
            call authorityAddress.canCall(address arg1, address arg2, bytes4 arg3) with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), call.func_hash
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
    authorityAddress = arg1
    emit LogSetAuthority(arg1);
}

function stop() {
    if this.address != msg.sender:
        if owner != msg.sender:
            require authorityAddress
            require ext_code.size(authorityAddress)
            call authorityAddress.canCall(address arg1, address arg2, bytes4 arg3) with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), call.func_hash
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
    emit call.func_hash: msg.value, Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender, arg1, arg2
    stor1 = 1
}

function start() {
    if this.address != msg.sender:
        if owner != msg.sender:
            require authorityAddress
            require ext_code.size(authorityAddress)
            call authorityAddress.canCall(address arg1, address arg2, bytes4 arg3) with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), call.func_hash
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
    emit call.func_hash: msg.value, Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender, arg1, arg2
    stor1 = 0
}

function addFreezer(address arg1) {
    if this.address != msg.sender:
        if owner != msg.sender:
            require authorityAddress
            require ext_code.size(authorityAddress)
            call authorityAddress.canCall(address arg1, address arg2, bytes4 arg3) with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), call.func_hash
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
    require ext_code.size(authorityAddress)
    call authorityAddress.0x526606c9 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function removeFreezer(address arg1) {
    if this.address != msg.sender:
        if owner != msg.sender:
            require authorityAddress
            require ext_code.size(authorityAddress)
            call authorityAddress.canCall(address arg1, address arg2, bytes4 arg3) with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), call.func_hash
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
    require ext_code.size(authorityAddress)
    call authorityAddress.0x2acd2000 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function validBalanceOf(address arg1) {
    mem[64] = (32 * freezingBalanceNumberOf[address(arg1)].field_0) + 128
    mem[96] = freezingBalanceNumberOf[address(arg1)].field_0
    s = 128
    idx = 0
    while idx < freezingBalanceNumberOf[address(arg1)].field_0:
        mem[0] = sha3(address(arg1), 8)
        _17 = mem[64]
        mem[64] = mem[64] + 96
        mem[_17] = freezingBalanceNumberOf[address(arg1)][idx].field_0
        mem[_17 + 32] = freezingBalanceNumberOf[address(arg1)][idx].field_256
        mem[_17 + 64] = freezingBalanceNumberOf[address(arg1)][idx].field_512
        mem[s] = _17
        s = s + 32
        idx = idx + 1
        continue 
    mem[0] = arg1
    mem[32] = 6
    idx = 0
    s = balanceOf[address(arg1)]
    while idx < mem[96]:
        require idx < mem[96]
        if mem[mem[(32 * idx) + 128]] <= block.timestamp:
            idx = idx + 1
            s = s
            continue 
        require idx < mem[96]
        require s - mem[mem[(32 * idx) + 128] + 32] <= s
        idx = idx + 1
        s = s - mem[mem[(32 * idx) + 128] + 32]
        continue 
    return s
}



}
