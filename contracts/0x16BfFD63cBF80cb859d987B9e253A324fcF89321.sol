contract main {


// =======================  Init code  ======================


address stor0;
array of uint256 stor4;
array of uint256 stor5;
uint8 stor6;

function _fallback() {
    mem[96 len -9144] = code.data[9750 len -9144]
    mem[64] = -9048
    stor0 = msg.sender
    emit OwnershipTransferred(0, stor0);
    stor4[] = Array(len=mem[mem[96] + 96], data=mem[mem[96] + 128 len mem[mem[96] + 96]])
    stor5[] = Array(len=mem[mem[128] + 96], data=mem[mem[128] + 128 len mem[mem[128] + 96]])
    stor6 = mem[191 len 1]
    return code.data[606 len 9144]
}



// =====================  Runtime code  =====================


address owner;
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
mapping of uint8 stor7;
mapping of uint8 stor8;
array of struct authorities;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function issuers(address arg1) {
    return bool(stor7[arg1])
}

function sub_3e33139a(?) {
    return bool(stor8[arg1])
}

function authorities(uint256 arg1) {
    require arg1 < authorities.length
    return address(authorities[arg1].field_0)
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function sub_8acae715(?) {
    return authorities.length
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function sub_16537786(?) {
    require msg.sender == owner
    stor8[address(arg1)] = 0
    emit 0x6a38b6b3: arg1
    return 1
}

function sub_f28e91d7(?) {
    require msg.sender == owner
    stor8[address(arg1)] = 1
    emit 0x9723df9a: arg1
    return 1
}

function addIssuer(address arg1) {
    require msg.sender == owner
    stor7[address(arg1)] = 1
    emit IssuerAdded(arg1);
    return 1
}

function removeIssuer(address arg1) {
    require msg.sender == owner
    stor7[address(arg1)] = 0
    emit IssuerRemoved(arg1);
    return 1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    owner = arg1
    emit OwnershipTransferred(owner, owner);
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function redeem(address arg1, uint256 arg2) {
    if not stor8[address(msg.sender)]:
        require msg.sender == owner
    if balanceOf[address(arg1)] < arg2:
        return 0
    if arg2 <= 0:
        return 0
    balanceOf[address(arg1)] -= arg2
    totalSupply -= arg2
    emit 0x2e33fa1f: arg2, msg.sender, arg1
    return 1
}

function issue(address arg1, uint256 arg2) {
    if not stor7[address(msg.sender)]:
        require msg.sender == owner
    if arg2 <= 0:
        return 0
    if balanceOf[address(arg1)] + arg2 <= balanceOf[address(arg1)]:
        return 0
    balanceOf[address(arg1)] += arg2
    totalSupply += arg2
    emit TokensIssued(arg2, msg.sender, arg1);
    return 1
}

function addAuthority(address arg1) {
    require msg.sender == owner
    idx = 0
    while idx < authorities.length:
        mem[0] = 9
        if address(authorities[idx].field_0) != arg1:
            idx = idx + 1
            continue 
        else:
            return 0
    authorities.length++
    if not authorities.length <= authorities.length + 1:
        idx = authorities.length + 1
        while authorities.length > idx:
            authorities[idx].field_0 = 0
            idx = idx + 1
            continue 
    address(authorities[authorities.length].field_0) = arg1
    emit 0xe0840b3b: arg1, owner
    return 1
}

function removeAuthority(address arg1) {
    require msg.sender == owner
    idx = 0
    while idx < authorities.length:
        mem[0] = 9
        if address(authorities[idx].field_0) != arg1:
            idx = idx + 1
            continue 
        s = idx
        while s < authorities.length - 1:
            require s + 1 < authorities.length
            require s < authorities.length
            mem[0] = 9
            address(authorities[s].field_0) = address(authorities[s].field_256)
            s = s + 1
            continue 
        authorities.length--
        if not authorities.length <= authorities.length - 1:
            idx = sha3(9) + authorities.length - 1
            while sha3(9) + authorities.length > idx:
                stor[idx] = 0
                idx = idx + 1
                continue 
        emit 0xe6b23bf8: arg1, owner
        return 1
    return 0
}

function transfer(address arg1, uint256 arg2) {
    if balanceOf[address(msg.sender)] < arg2:
        return 0
    if arg2 <= 0:
        return 0
    if balanceOf[address(arg1)] + arg2 <= balanceOf[address(arg1)]:
        return 0
    idx = 0
    while idx < authorities.length:
        mem[0] = 9
        mem[100] = msg.sender
        mem[132] = msg.sender
        mem[164] = arg1
        mem[196] = arg2
        require ext_code.size(address(authorities[idx].field_0))
        call address(authorities[idx].field_0).authorize(address rg1, address rg2, address rg3, uint256 rg4) with:
             gas gas_remaining - 710 wei
            args msg.sender, msg.sender, address(arg1), arg2
        mem[96] = ext_call.return_data[0]
        require ext_call.success
        if ext_call.return_data[0]:
            idx = idx + 1
            continue 
        else:
            return 0
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if balanceOf[address(arg1)] < arg3:
        return 0
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        return 0
    if arg3 <= 0:
        return 0
    if balanceOf[address(arg2)] + arg3 <= balanceOf[address(arg2)]:
        return 0
    idx = 0
    while idx < authorities.length:
        mem[0] = 9
        mem[100] = msg.sender
        mem[132] = arg1
        mem[164] = arg2
        mem[196] = arg3
        require ext_code.size(address(authorities[idx].field_0))
        call address(authorities[idx].field_0).authorize(address rg1, address rg2, address rg3, uint256 rg4) with:
             gas gas_remaining - 710 wei
            args msg.sender, address(arg1), address(arg2), arg3
        mem[96] = ext_call.return_data[0]
        require ext_call.success
        if ext_call.return_data[0]:
            idx = idx + 1
            continue 
        else:
            return 0
    balanceOf[address(arg1)] -= arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, msg.sender, arg2);
    return 1
}



}
