contract main {




// =====================  Runtime code  =====================


const name = 'EUR Stablecoin'

const decimals = 18

const symbol = 'EURX'


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
address owner;
address potentialOwner;
uint8 stor5; offset 160
uint128 stor5; offset 160
address pauserAddress;
address masterMinterAddress;
uint8 stor7; offset 160
uint128 stor7; offset 160
address minterAddress;

function minter() payable {
    return minterAddress
}

function totalSupply() payable {
    return totalSupply
}

function masterMinter() payable {
    return masterMinterAddress
}

function paused() payable {
    return bool(uint8(stor5.field_160))
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function potentialOwner() payable {
    return potentialOwner
}

function owner() payable {
    return owner
}

function pauser() payable {
    return pauserAddress
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function pause() payable {
    require msg.sender == pauserAddress
    Mask(96, 0, stor5.field_160) = 1
    emit Pause()
}

function unpause() payable {
    require msg.sender == pauserAddress
    Mask(96, 0, stor5.field_160) = 0
    emit Unpause()
}

function updateMinter(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    minterAddress = arg1
    return 1
}

function claimOwnership() payable {
    require msg.sender == potentialOwner
    owner = potentialOwner
    potentialOwner = 0
    emit 0x935c5177: owner, potentialOwner
}

function updateMasterMinter(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    masterMinterAddress = arg1
    return 1
}

function updatePauser(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    pauserAddress = arg1
    emit PauserChanged(pauserAddress);
}

function sub_279a10f1(?) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    potentialOwner = arg1
    emit NewPotentialOwner(owner, potentialOwner);
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require not uint8(stor5.field_160)
    require arg1
    require msg.sender
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require not uint8(stor5.field_160)
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require not uint8(stor5.field_160)
    require arg2 <= allowance[address(msg.sender)][address(arg1)]
    require arg1
    require msg.sender
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function initialize(address arg1, address arg2, address arg3, address arg4) payable {
    require calldata.size - 4 >= 128
    require not uint8(stor7.field_160)
    require arg1
    require arg2
    require arg3
    require arg4
    owner = arg1
    require msg.sender == owner
    require arg2
    pauserAddress = arg2
    emit PauserChanged(pauserAddress);
    masterMinterAddress = arg3
    minterAddress = arg4
    Mask(96, 0, stor7.field_160) = 1
}

function increaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require not uint8(stor5.field_160)
    require allowance[address(msg.sender)][address(arg1)] + arg2 >= allowance[address(msg.sender)][address(arg1)]
    require arg1
    require msg.sender
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}

function burn(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 > 0
    require balanceOf[address(msg.sender)] >= arg1
    if owner != msg.sender:
        require not uint8(stor5.field_160)
    require msg.sender
    require arg1 <= totalSupply
    totalSupply -= arg1
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    emit Transfer(arg1, msg.sender, 0);
    emit Burn(msg.sender, arg1);
    return 1
}

function mint(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if minterAddress != msg.sender:
        require msg.sender == masterMinterAddress
    require arg2 > 0
    if msg.sender == minterAddress:
        if minterAddress != masterMinterAddress:
            require arg1 == owner
    require arg1
    require totalSupply + arg2 >= totalSupply
    totalSupply += arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, 0, arg1);
    emit Mint(msg.sender, address(arg1), arg2);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require not uint8(stor5.field_160)
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    require msg.sender
    require arg1
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
    return 1
}

function transferERC20Token(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require msg.sender == owner
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] >= arg3
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] + arg3 >= ext_call.return_data[0]
    require ext_call.return_data[0] == ext_call.return_data[0] + arg3
    return 1
}



}
