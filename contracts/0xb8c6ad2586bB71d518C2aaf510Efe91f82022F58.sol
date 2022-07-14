contract main {




// =====================  Runtime code  =====================


const name = 'Gomics'

const decimals = 18

const symbol = 'GOM'

const INITIAL_SUPPLY = 75 * 10^6


uint8 stor0; offset 160
uint128 stor0; offset 160
address owner;
mapping of uint8 stor1;
uint256 adminLength;
uint256 sub_8ab42e40;
mapping of uint8 stor4;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;

function totalSupply() payable {
    return totalSupply
}

function adminLength() payable {
    return adminLength
}

function paused() payable {
    return bool(uint8(stor0.field_160))
}

function admin(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor1[arg1])
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function sub_8ab42e40(?) payable {
    return sub_8ab42e40
}

function owner() payable {
    return owner
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function blacklist(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor4[arg1])
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function unpause() payable {
    require msg.sender == owner
    require uint8(stor0.field_160)
    Mask(96, 0, stor0.field_160) = 0
    emit Unpause()
}

function pause() payable {
    require msg.sender == owner
    require not uint8(stor0.field_160)
    Mask(96, 0, stor0.field_160) = 1
    emit Pause()
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    if not arg1:
        revert with 0, 'New owner cannot be address(0)'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function removeAdmin(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    if not stor1[address(arg1)]:
        revert with 0, 'Not administrator'
    stor1[address(arg1)] = 0
    adminLength--
    emit RemoveAdmin(arg1);
    return 1
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require not uint8(stor0.field_160)
    if arg2:
        require not allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function increaseApproval(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require not uint8(stor0.field_160)
    require allowance[address(msg.sender)][address(arg1)] + arg2 >= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function decreaseApproval(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require not uint8(stor0.field_160)
    if arg2 >= allowance[address(msg.sender)][address(arg1)]:
        allowance[address(msg.sender)][address(arg1)] = 0
    else:
        require arg2 <= allowance[address(msg.sender)][address(arg1)]
        allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require not uint8(stor0.field_160)
    if stor4[address(msg.sender)]:
        revert with 0, 'Is in Blacklist'
    if stor4[address(arg1)]:
        revert with 0, 'Is in Blacklist'
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require not uint8(stor0.field_160)
    if stor4[address(msg.sender)]:
        revert with 0, 'Is in Blacklist'
    if stor4[address(arg1)]:
        revert with 0, 'Is in Blacklist'
    if stor4[address(arg2)]:
        revert with 0, 'Is in Blacklist'
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function setBlacklist(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        if not stor1[address(msg.sender)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        43,
                        0x296d73672e73656e646572206973206e6574686572206f776e6572206e6f722061646d696e69737461746f,
                        mem[207 len 21]
    require arg1
    if not arg2:
        if not stor4[address(arg1)]:
            revert with 0, 'Not in blacklist yet'
    else:
        if stor4[address(arg1)]:
            revert with 0, 'Already in blacklist'
    stor4[address(arg1)] = uint8(arg2)
    emit SetBlacklist(arg2, arg1);
}

function addAdmin(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    if stor1[address(arg1)]:
        revert with 0, 'Is administrator'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0xfe41646d696e6973747261746f722063616e6e6f7420626520616464726573732830,
                    mem[198 len 30]
    if arg1 == owner:
        revert with 0, 'Administrator cannot be owner'
    if adminLength >= sub_8ab42e40:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    45,
                    0x72457863656564656420746865206d6178696d756d206e756d626572206f662061646d696e6973747261746f72,
                    mem[209 len 19]
    stor1[address(arg1)] = 1
    adminLength++
    emit AddAdmin(arg1);
    return 1
}



}
