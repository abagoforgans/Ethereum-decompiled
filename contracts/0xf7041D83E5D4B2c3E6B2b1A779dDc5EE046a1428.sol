contract main {




// =====================  Runtime code  =====================


uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
address authorityAddress;
uint8 stor4; offset 160
address owner;
uint256 name;
uint256 symbol;
uint256 decimals;

function name() payable {
    return name
}

function totalSupply() payable {
    return totalSupply
}

function decimals() payable {
    return decimals
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function stopped() payable {
    return bool(stor4)
}

function owner() payable {
    return owner
}

function symbol() payable {
    return symbol
}

function authority() payable {
    return authorityAddress
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function isOwner(address arg1) payable {
    require calldata.size - 4 >= 32
    return (owner == arg1)
}

function setName(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 32, 17, 0xfe64732d617574682d6e6f6e2d6f776e65720000000000000000000000000000
    name = arg1
}

function approvex(address arg1) payable {
    require calldata.size - 4 >= 32
    if stor4:
        revert with 0, 'ds-stop-is-stopped'
    allowance[msg.sender][address(arg1)] = -1
    emit Approval(-1, msg.sender, arg1);
    return 1
}

function setOwner(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 32, 17, 0xfe64732d617574682d6e6f6e2d6f776e65720000000000000000000000000000
    owner = arg1
    emit LogSetOwner(arg1);
}

function setAuthority(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 32, 17, 0xfe64732d617574682d6e6f6e2d6f776e65720000000000000000000000000000
    authorityAddress = arg1
    emit LogSetAuthority(arg1);
}

function stop() payable {
    if owner != msg.sender:
        revert with 0, 32, 17, 0xfe64732d617574682d6e6f6e2d6f776e65720000000000000000000000000000
    emit call.func_hash: msg.value, Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender, arg1, arg2
    stor4 = 1
}

function start() payable {
    if owner != msg.sender:
        revert with 0, 32, 17, 0xfe64732d617574682d6e6f6e2d6f776e65720000000000000000000000000000
    emit call.func_hash: msg.value, Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender, arg1, arg2
    stor4 = 0
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if stor4:
        revert with 0, 'ds-stop-is-stopped'
    if allowance[msg.sender][address(arg1)]:
        require not arg2
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function mint(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if msg.sender != this.address:
        if owner != msg.sender:
            if not authorityAddress:
                revert with 0, 'ds-auth-unauthorized'
            if authorityAddress != msg.sender:
                revert with 0, 'ds-auth-unauthorized'
    if stor4:
        revert with 0, 'ds-stop-is-stopped'
    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
        revert with 0, 'ds-math-add-overflow'
    balanceOf[address(arg1)] += arg2
    if totalSupply + arg2 < totalSupply:
        revert with 0, 'ds-math-add-overflow'
    totalSupply += arg2
    emit Mint(arg2, arg1);
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if stor4:
        revert with 0, 'ds-stop-is-stopped'
    if arg1 != msg.sender:
        if allowance[address(arg1)][msg.sender] != -1:
            if arg3 > allowance[address(arg1)][msg.sender]:
                revert with 0, 'ds-token-insufficient-approval'
            if allowance[address(arg1)][msg.sender] - arg3 > allowance[address(arg1)][msg.sender]:
                revert with 0, 'ds-math-sub-underflow'
            allowance[address(arg1)][msg.sender] -= arg3
    if arg3 > balanceOf[address(arg1)]:
        revert with 0, 'ds-token-insufficient-balance'
    if balanceOf[address(arg1)] - arg3 > balanceOf[address(arg1)]:
        revert with 0, 'ds-math-sub-underflow'
    balanceOf[address(arg1)] -= arg3
    if balanceOf[arg2] + arg3 < balanceOf[arg2]:
        revert with 0, 'ds-math-add-overflow'
    balanceOf[address(arg2)] = balanceOf[arg2] + arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if stor4:
        revert with 0, 'ds-stop-is-stopped'
    if msg.sender != msg.sender:
        if allowance[address(msg.sender)][msg.sender] != -1:
            if arg2 > allowance[address(msg.sender)][msg.sender]:
                revert with 0, 'ds-token-insufficient-approval'
            if allowance[address(msg.sender)][msg.sender] - arg2 > allowance[address(msg.sender)][msg.sender]:
                revert with 0, 'ds-math-sub-underflow'
            allowance[address(msg.sender)][msg.sender] -= arg2
    if arg2 > balanceOf[address(msg.sender)]:
        revert with 0, 'ds-token-insufficient-balance'
    if balanceOf[address(msg.sender)] - arg2 > balanceOf[address(msg.sender)]:
        revert with 0, 'ds-math-sub-underflow'
    balanceOf[address(msg.sender)] -= arg2
    if balanceOf[arg1] + arg2 < balanceOf[arg1]:
        revert with 0, 'ds-math-add-overflow'
    balanceOf[address(arg1)] = balanceOf[arg1] + arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function burn(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if msg.sender != this.address:
        if owner != msg.sender:
            if not authorityAddress:
                revert with 0, 'ds-auth-unauthorized'
            if authorityAddress != msg.sender:
                revert with 0, 'ds-auth-unauthorized'
    if stor4:
        revert with 0, 'ds-stop-is-stopped'
    if arg1 != msg.sender:
        if allowance[address(arg1)][msg.sender] != -1:
            if arg2 > allowance[address(arg1)][msg.sender]:
                revert with 0, 'ds-token-insufficient-approval'
            if allowance[address(arg1)][msg.sender] - arg2 > allowance[address(arg1)][msg.sender]:
                revert with 0, 'ds-math-sub-underflow'
            allowance[address(arg1)][msg.sender] -= arg2
    if arg2 > balanceOf[address(arg1)]:
        revert with 0, 'ds-token-insufficient-balance'
    if balanceOf[address(arg1)] - arg2 > balanceOf[address(arg1)]:
        revert with 0, 'ds-math-sub-underflow'
    balanceOf[address(arg1)] -= arg2
    if totalSupply - arg2 > totalSupply:
        revert with 0, 'ds-math-sub-underflow'
    totalSupply -= arg2
    emit Burn(arg2, arg1);
}



}
