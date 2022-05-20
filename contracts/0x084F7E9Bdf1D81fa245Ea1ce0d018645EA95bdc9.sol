contract main {


// =======================  Init code  ======================


uint256 stor0;
mapping of uint256 stor1;
address stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;

function _fallback() payable {
    stor7 = 18
    stor8 = 100000000000 * 10^18
    require not msg.value
    stor1[address(msg.sender)] = 0
    stor0 = 0
    stor4 = msg.sender
    emit LogSetOwner(msg.sender);
    stor5 = code.data[3751 len 32]
    stor6 = code.data[3783 len 32]
    return code.data[184 len 3567]
}



// =====================  Runtime code  =====================


uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
address authorityAddress;
uint8 stor4; offset 160
address owner;
uint256 symbol;
uint256 name;
uint256 decimals;
uint256 MAX_MINT_NUMBER;

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
    return bool(stor4)
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

function MAX_MINT_NUMBER() {
    return MAX_MINT_NUMBER
}

function _fallback() payable {
    revert
}

function approve(address arg1, uint256 arg2) {
    require not stor4
    emit call.func_hash: msg.value, Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender, arg1, arg2
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
                 gas gas_remaining - 710 wei
                args msg.sender, address(this.address), call.func_hash
            require ext_call.success
            require ext_call.return_data[0]
    owner = arg1
    emit LogSetOwner(arg1);
}

function push(address arg1, uint128 arg2) {
    require not stor4
    emit call.func_hash: msg.value, Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender, arg1, arg2
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(msg.sender)] - arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[arg1] + arg2 >= balanceOf[arg1]
    balanceOf[address(arg1)] = balanceOf[arg1] + arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require not stor4
    emit call.func_hash: msg.value, Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender, arg1, arg2
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(msg.sender)] - arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[arg1] + arg2 >= balanceOf[arg1]
    balanceOf[address(arg1)] = balanceOf[arg1] + arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function setAuthority(address arg1) {
    if this.address != msg.sender:
        if owner != msg.sender:
            require authorityAddress
            require ext_code.size(authorityAddress)
            call authorityAddress.canCall(address arg1, address arg2, bytes4 arg3) with:
                 gas gas_remaining - 710 wei
                args msg.sender, address(this.address), call.func_hash
            require ext_call.success
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
                 gas gas_remaining - 710 wei
                args msg.sender, address(this.address), call.func_hash
            require ext_call.success
            require ext_call.return_data[0]
    emit call.func_hash: msg.value, Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender, arg1, arg2
    stor4 = 1
}

function start() {
    if this.address != msg.sender:
        if owner != msg.sender:
            require authorityAddress
            require ext_code.size(authorityAddress)
            call authorityAddress.canCall(address arg1, address arg2, bytes4 arg3) with:
                 gas gas_remaining - 710 wei
                args msg.sender, address(this.address), call.func_hash
            require ext_call.success
            require ext_call.return_data[0]
    emit call.func_hash: msg.value, Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender, arg1, arg2
    stor4 = 0
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require not stor4
    emit call.func_hash: msg.value, Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender, arg1, arg2
    require balanceOf[address(arg1)] >= arg3
    require allowance[address(arg1)][address(msg.sender)] >= arg3
    require allowance[address(arg1)][address(msg.sender)] - arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    require balanceOf[address(arg1)] - arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[arg2] + arg3 >= balanceOf[arg2]
    balanceOf[address(arg2)] = balanceOf[arg2] + arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function pull(address arg1, uint128 arg2) {
    require not stor4
    emit call.func_hash: msg.value, Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender, arg1, arg2
    require balanceOf[address(arg1)] >= arg2
    require allowance[address(arg1)][address(msg.sender)] >= arg2
    require allowance[address(arg1)][address(msg.sender)] - arg2 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] - arg2 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg2
    require balanceOf[msg.sender] + arg2 >= balanceOf[msg.sender]
    balanceOf[address(msg.sender)] = balanceOf[msg.sender] + arg2
    emit Transfer(arg2, arg1, msg.sender);
    return 1
}

function burn(uint128 arg1) {
    if this.address != msg.sender:
        if owner != msg.sender:
            require authorityAddress
            require ext_code.size(authorityAddress)
            call authorityAddress.canCall(address arg1, address arg2, bytes4 arg3) with:
                 gas gas_remaining - 710 wei
                args msg.sender, address(this.address), call.func_hash
            require ext_call.success
            require ext_call.return_data[0]
    require not stor4
    emit call.func_hash: msg.value, Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender, arg1, cd[36]
    require balanceOf[address(msg.sender)] - arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    require totalSupply - arg1 <= totalSupply
    totalSupply -= arg1
}

function mint(uint128 arg1) {
    if this.address != msg.sender:
        if owner != msg.sender:
            require authorityAddress
            require ext_code.size(authorityAddress)
            call authorityAddress.canCall(address arg1, address arg2, bytes4 arg3) with:
                 gas gas_remaining - 710 wei
                args msg.sender, address(this.address), call.func_hash
            require ext_call.success
            require ext_call.return_data[0]
    require not stor4
    emit call.func_hash: msg.value, Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender, arg1, cd[36]
    require totalSupply + arg1 >= totalSupply
    require totalSupply + arg1 <= MAX_MINT_NUMBER
    require balanceOf[address(msg.sender)] + arg1 >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] += arg1
    require totalSupply + arg1 >= totalSupply
    totalSupply += arg1
}



}
