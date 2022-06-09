contract main {




// =====================  Runtime code  =====================


uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
address authorityAddress;
uint8 stor4; offset 160
uint128 stor4; offset 160
address owner;
uint256 symbol;
uint256 decimals;
uint256 name;

function name() {
    return name
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function stopped() {
    return bool(uint8(stor4.field_160))
}

function owner() {
    return owner
}

function symbol() {
    return symbol
}

function authority() {
    return authorityAddress
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function approve(address arg1) {
    require not uint8(stor4.field_160)
    allowance[address(msg.sender)][address(arg1)] = -1
    emit Approval(-1, msg.sender, arg1);
    return 1
}

function approve(address arg1, uint256 arg2) {
    require not uint8(stor4.field_160)
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function setName(bytes32 arg1) {
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
    name = arg1
}

function move(address arg1, address arg2, uint256 arg3) {
    require not uint8(stor4.field_160)
    if arg1 != msg.sender:
        if allowance[address(arg1)][address(msg.sender)] != -1:
            require allowance[address(arg1)][address(msg.sender)] - arg3 <= allowance[address(arg1)][address(msg.sender)]
            allowance[address(arg1)][address(msg.sender)] -= arg3
    require balanceOf[address(arg1)] - arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
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
    emit LogSetOwner(owner);
}

function pull(address arg1, uint256 arg2) {
    require not uint8(stor4.field_160)
    if arg1 != msg.sender:
        if allowance[address(arg1)][address(msg.sender)] != -1:
            require allowance[address(arg1)][address(msg.sender)] - arg2 <= allowance[address(arg1)][address(msg.sender)]
            allowance[address(arg1)][address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] - arg2 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg2
    require balanceOf[address(msg.sender)] + arg2 >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] += arg2
    emit Transfer(arg2, arg1, msg.sender);
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require not uint8(stor4.field_160)
    if arg1 != msg.sender:
        if allowance[address(arg1)][address(msg.sender)] != -1:
            require allowance[address(arg1)][address(msg.sender)] - arg3 <= allowance[address(arg1)][address(msg.sender)]
            allowance[address(arg1)][address(msg.sender)] -= arg3
    require balanceOf[address(arg1)] - arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
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
    emit LogSetAuthority(authorityAddress);
}

function push(address arg1, uint256 arg2) {
    require not uint8(stor4.field_160)
    if msg.sender != msg.sender:
        if allowance[address(msg.sender)][address(msg.sender)] != -1:
            require allowance[address(msg.sender)][address(msg.sender)] - arg2 <= allowance[address(msg.sender)][address(msg.sender)]
            allowance[address(msg.sender)][address(msg.sender)] -= arg2
    require balanceOf[address(msg.sender)] - arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
}

function transfer(address arg1, uint256 arg2) {
    require not uint8(stor4.field_160)
    if msg.sender != msg.sender:
        if allowance[address(msg.sender)][address(msg.sender)] != -1:
            require allowance[address(msg.sender)][address(msg.sender)] - arg2 <= allowance[address(msg.sender)][address(msg.sender)]
            allowance[address(msg.sender)][address(msg.sender)] -= arg2
    require balanceOf[address(msg.sender)] - arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
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
    Mask(96, 0, stor4.field_160) = 1
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
    Mask(96, 0, stor4.field_160) = 0
}

function mint(address arg1, uint256 arg2) {
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
    require not uint8(stor4.field_160)
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    require totalSupply + arg2 >= totalSupply
    totalSupply += arg2
    emit Mint(arg2, arg1);
}

function mint(uint256 arg1) {
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
    require not uint8(stor4.field_160)
    require balanceOf[address(msg.sender)] + arg1 >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] += arg1
    require totalSupply + arg1 >= totalSupply
    totalSupply += arg1
    emit Mint(arg1, msg.sender);
}

function burn(address arg1, uint256 arg2) {
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
    require not uint8(stor4.field_160)
    if arg1 != msg.sender:
        if allowance[address(arg1)][address(msg.sender)] != -1:
            require allowance[address(arg1)][address(msg.sender)] - arg2 <= allowance[address(arg1)][address(msg.sender)]
            allowance[address(arg1)][address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] - arg2 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg2
    require totalSupply - arg2 <= totalSupply
    totalSupply -= arg2
    emit Burn(arg2, arg1);
}

function burn(uint256 arg1) {
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
    require not uint8(stor4.field_160)
    if msg.sender != msg.sender:
        if allowance[address(msg.sender)][address(msg.sender)] != -1:
            require allowance[address(msg.sender)][address(msg.sender)] - arg1 <= allowance[address(msg.sender)][address(msg.sender)]
            allowance[address(msg.sender)][address(msg.sender)] -= arg1
    require balanceOf[address(msg.sender)] - arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    require totalSupply - arg1 <= totalSupply
    totalSupply -= arg1
    emit Burn(arg1, msg.sender);
}



}
