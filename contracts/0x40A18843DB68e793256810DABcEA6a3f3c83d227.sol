contract main {




// =====================  Runtime code  =====================


mapping of uint8 stor0;
uint8 stor1;
address owner; offset 8
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
mapping of uint8 stor8;
mapping of struct sub_bb8d6b1d;
mapping of uint256 sub_904e19a9;
uint256 totalWhiteListed;
array of address holdersIndex;
uint256 tokenPrice;
uint256 totalReleased;

function name() payable {
    return name[0 len name.length]
}

function totalSupply() payable {
    return totalSupply
}

function holdersIndex(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < holdersIndex.length
    return holdersIndex[arg1]
}

function decimals() payable {
    return decimals
}

function isPauser(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1
    return bool(stor0[address(arg1)])
}

function paused() payable {
    return bool(stor1)
}

function isWhiteListed(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(sub_bb8d6b1d[address(arg1)].field_0), sub_bb8d6b1d[address(arg1)].field_256
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function membership(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(sub_bb8d6b1d[arg1].field_0), 
           sub_bb8d6b1d[arg1].field_0,
           sub_bb8d6b1d[arg1].field_256,
           sub_bb8d6b1d[arg1].field_512,
           sub_bb8d6b1d[arg1].field_768,
           bool(sub_bb8d6b1d[arg1].field_1024),
           sub_bb8d6b1d[arg1].field_1280,
           bool(sub_bb8d6b1d[arg1].field_1536)
}

function tokenPrice() payable {
    return tokenPrice
}

function owner() payable {
    return owner
}

function sub_904e19a9(?) payable {
    require calldata.size - 4 >= 32
    return sub_904e19a9[arg1]
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function totalWhiteListed() payable {
    return totalWhiteListed
}

function isMinter(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1
    return bool(stor8[address(arg1)])
}

function sub_bb8d6b1d(?) payable {
    require calldata.size - 4 >= 32
    return bool(sub_bb8d6b1d[address(arg1)].field_0), 
           sub_bb8d6b1d[address(arg1)].field_0,
           sub_bb8d6b1d[address(arg1)].field_256,
           sub_bb8d6b1d[address(arg1)].field_512,
           sub_bb8d6b1d[address(arg1)].field_768,
           bool(sub_bb8d6b1d[address(arg1)].field_1024),
           sub_bb8d6b1d[address(arg1)].field_1280,
           bool(sub_bb8d6b1d[address(arg1)].field_1536)
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function totalReleased() payable {
    return totalReleased
}

function sub_ec759b32(?) payable {
    return holdersIndex.length
}

function _fallback() payable {
    revert
}

function isOwner() payable {
    return (msg.sender == owner)
}

function renounceOwnership() payable {
    require msg.sender == owner
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function unpause() payable {
    require msg.sender
    require stor0[address(msg.sender)]
    require stor1
    stor1 = 0
    emit Unpaused(msg.sender);
}

function pause() payable {
    require msg.sender
    require stor0[address(msg.sender)]
    require not stor1
    stor1 = 1
    emit Paused(msg.sender);
}

function renouncePauser() payable {
    require msg.sender
    require stor0[address(msg.sender)]
    stor0[address(msg.sender)] = 0
    emit PauserRemoved(msg.sender);
}

function renounceMinter() payable {
    require msg.sender
    require stor8[address(msg.sender)]
    stor8[address(msg.sender)] = 0
    emit MinterRemoved(msg.sender);
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function addPauser(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender
    require stor0[address(msg.sender)]
    require arg1
    require not stor0[address(arg1)]
    stor0[address(arg1)] = 1
    emit PauserAdded(arg1);
}

function addMinter(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender
    require stor8[address(msg.sender)]
    require arg1
    require not stor8[address(arg1)]
    stor8[address(arg1)] = 1
    emit MinterAdded(arg1);
}

function sub_c669df6d(?) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require bool(sub_bb8d6b1d[address(arg1)].field_1536) == 1
    sub_bb8d6b1d[address(arg1)].field_1536 = 0
    sub_bb8d6b1d[address(arg1)].field_0 = 1
    emit 0xf9ce1cad: arg1
}

function burn(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender
    require arg1 <= totalSupply
    totalSupply -= arg1
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    emit Transfer(arg1, msg.sender, 0);
}

function sub_f54b759e(?) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    if not sub_bb8d6b1d[address(arg1)].field_0:
        sub_bb8d6b1d[address(arg1)].field_0 = 1
    else:
        sub_bb8d6b1d[address(arg1)].field_0 = 0
    emit 0x99219286: address(arg1), bool(sub_bb8d6b1d[address(arg1)].field_0)
}

function removeFromWhiteList(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require bool(sub_bb8d6b1d[address(arg1)].field_0) == 1
    sub_bb8d6b1d[address(arg1)].field_0 = 0
    sub_bb8d6b1d[address(arg1)].field_256 = 0
    sub_bb8d6b1d[address(arg1)].field_8 = 0
    sub_bb8d6b1d[address(arg1)].field_512 = 0
    totalWhiteListed--
    emit LogRemoveWhiteListed(arg1);
    return 1
}

function burnFrom(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1
    require arg2 <= totalSupply
    totalSupply -= arg2
    require arg2 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg2
    emit Transfer(arg2, arg1, 0);
    require arg2 <= allowance[address(arg1)][address(msg.sender)]
    require msg.sender
    require arg1
    allowance[address(arg1)][address(msg.sender)] -= arg2
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg2), arg1, msg.sender);
}

function burnBlacklistedFunds(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    if sub_bb8d6b1d[address(msg.sender)].field_0:
        revert with 0, 'User from is blacklisted'
    if sub_bb8d6b1d[address(msg.sender)].field_0:
        revert with 0, 'User to blacklisted'
    require arg1
    require balanceOf[address(arg1)] <= totalSupply
    totalSupply -= balanceOf[address(arg1)]
    require balanceOf[address(arg1)] <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] = 0
    emit Transfer(balanceOf[address(arg1)], arg1, 0);
    emit 0x6997c1eb: balanceOf[address(arg1)], arg1
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if sub_bb8d6b1d[address(msg.sender)].field_0:
        revert with 0, 'User from is blacklisted'
    if sub_bb8d6b1d[address(arg1)].field_0:
        revert with 0, 'User to blacklisted'
    if arg1 == this.address:
        revert with 0, 
                    32,
                    47,
                    0xfe596f752061726520747279696e6720746f2073656e6420746f6b656e7320746f20746f6b656e20636f6e74726163,
                    mem[1235 len 17]
    require arg1
    require msg.sender
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if sub_bb8d6b1d[address(msg.sender)].field_0:
        revert with 0, 'User from is blacklisted'
    if sub_bb8d6b1d[address(arg1)].field_0:
        revert with 0, 'User to blacklisted'
    if arg1 == this.address:
        revert with 0, 
                    32,
                    47,
                    0xfe596f752061726520747279696e6720746f2073656e6420746f6b656e7320746f20746f6b656e20636f6e74726163,
                    mem[1235 len 17]
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
    if sub_bb8d6b1d[address(msg.sender)].field_0:
        revert with 0, 'User from is blacklisted'
    if sub_bb8d6b1d[address(arg1)].field_0:
        revert with 0, 'User to blacklisted'
    if arg1 == this.address:
        revert with 0, 
                    32,
                    47,
                    0xfe596f752061726520747279696e6720746f2073656e6420746f6b656e7320746f20746f6b656e20636f6e74726163,
                    mem[1235 len 17]
    require arg2 <= allowance[address(msg.sender)][address(arg1)]
    require arg1
    require msg.sender
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function mint(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require msg.sender == owner
    if arg1 == this.address:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0xfe596f752061726520747279696e6720746f2073656e6420746f6b656e7320746f20746f6b656e20636f6e74726163,
                    mem[211 len 17]
    if not sub_bb8d6b1d[address(arg1)].field_0:
        revert with 0, 'User is blacklisted'
    require msg.sender
    require stor8[address(msg.sender)]
    require arg1
    require totalSupply + arg2 >= totalSupply
    totalSupply += arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, 0, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if sub_bb8d6b1d[address(msg.sender)].field_0:
        revert with 0, 'User from is blacklisted'
    if sub_bb8d6b1d[address(arg1)].field_0:
        revert with 0, 'User to blacklisted'
    if arg1 == this.address:
        revert with 0, 
                    32,
                    47,
                    0xfe596f752061726520747279696e6720746f2073656e6420746f6b656e7320746f20746f6b656e20636f6e74726163,
                    mem[1235 len 17]
    require allowance[address(msg.sender)][address(arg1)] + arg2 >= allowance[address(msg.sender)][address(arg1)]
    require arg1
    require msg.sender
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if sub_bb8d6b1d[address(arg1)].field_0:
        revert with 0, 'User from is blacklisted'
    if sub_bb8d6b1d[address(arg2)].field_0:
        revert with 0, 'User to blacklisted'
    if arg2 == this.address:
        revert with 0, 
                    32,
                    47,
                    0xfe596f752061726520747279696e6720746f2073656e6420746f6b656e7320746f20746f6b656e20636f6e74726163,
                    mem[1235 len 17]
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



}
