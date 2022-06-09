contract main {




// =====================  Runtime code  =====================


const name = 'Tokendesk Token'

const decimals = 18

const symbol = 'TDS'


mapping of uint256 stor1;
address owner;
address sub_85c292b4Address;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint8 stor7;
uint256 totalSupply;

function mintingFinished() {
    return bool(stor7)
}

function totalSupply() {
    return totalSupply
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function sub_85c292b4(?) {
    return sub_85c292b4Address
}

function owner() {
    return owner
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
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

function finishMinting() {
    require msg.sender == owner
    require not stor7
    stor7 = 1
    emit MintFinished()
    return 1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function mint(address arg1, uint256 arg2) {
    require msg.sender == owner
    require totalSupply + arg2 >= totalSupply
    totalSupply += arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require arg1
    require arg2 <= stor1[address(msg.sender)][address(arg1)]
    stor1[address(msg.sender)][address(arg1)] -= arg2
    emit Approval(stor1[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function increaseApproval(address arg1, uint256 arg2) {
    require allowance[address(msg.sender)][address(arg1)] + arg2 >= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) {
    require arg1
    require stor1[address(msg.sender)][address(arg1)] + arg2 >= stor1[address(msg.sender)][address(arg1)]
    stor1[address(msg.sender)][address(arg1)] += arg2
    emit Approval(stor1[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function decreaseApproval(address arg1, uint256 arg2) {
    if arg2 <= allowance[address(msg.sender)][address(arg1)]:
        allowance[address(msg.sender)][address(arg1)] -= arg2
    else:
        allowance[address(msg.sender)][address(arg1)] = 0
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    require ext_code.size(sub_85c292b4Address)
    call sub_85c292b4Address.0x40c10f19 with:
         gas gas_remaining wei
        args msg.sender, block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit 0x4c5f2f2d: block.timestamp, msg.sender
    return 1
}

function mintTokens(address[] arg1, uint256[] arg2) {
    require msg.sender == owner
    require not stor7
    require arg1.length > 0
    require arg1.length <= 100
    require arg1.length == arg2.length
    s = 0
    s = 0
    idx = 0
    while idx < arg1.length:
        require idx < arg2.length
        require address(cd[((32 * idx) + arg1 + 36)])
        require cd[((32 * idx) + arg2 + 36)] > 0
        require msg.sender == owner
        require totalSupply + cd[((32 * idx) + arg2 + 36)] >= totalSupply
        totalSupply += cd[((32 * idx) + arg2 + 36)]
        require balanceOf[address(cd[((32 * idx) + arg1 + 36)])] + cd[((32 * idx) + arg2 + 36)] >= balanceOf[address(cd[((32 * idx) + arg1 + 36)])]
        mem[0] = address(cd[((32 * idx) + arg1 + 36)])
        mem[32] = 5
        balanceOf[address(cd[((32 * idx) + arg1 + 36)])] += cd[((32 * idx) + arg2 + 36)]
        emit Mint(cd[((32 * idx) + arg2 + 36)], address(cd[((32 * idx) + arg1 + 36)]));
        mem[96] = cd[((32 * idx) + arg2 + 36)]
        emit Transfer(cd[((32 * idx) + arg2 + 36)], 0, address(cd[((32 * idx) + arg1 + 36)]));
        s = cd[((32 * idx) + arg2 + 36)]
        s = address(cd[((32 * idx) + arg1 + 36)])
        idx = idx + 1
        continue 
}



}
