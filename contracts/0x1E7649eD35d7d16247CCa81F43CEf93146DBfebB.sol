contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor5;

function _fallback() payable {
    stor0 = msg.sender
    stor5 = 1
    require not msg.value
    return code.data[99 len 6284]
}



// =====================  Runtime code  =====================


const name = 'SongToken'

const decimals = 18

const symbol = 'ST'

const INITIAL_SUPPLY = 0


address owner;
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of address addresses;
mapping of uint256 indexes;
uint256 index;
mapping of uint256 allowance;

function totalSupply() {
    return totalSupply
}

function index() {
    return index
}

function indexes(address arg1) {
    return indexes[arg1]
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function addresses(uint256 arg1) {
    return addresses[arg1]
}

function _fallback() payable {
    revert
}

function TestToken() {
    totalSupply = 0
    balanceOf[address(msg.sender)] = 0
    if not indexes[address(msg.sender)]:
        addresses[stor5] = msg.sender
        indexes[address(msg.sender)] = index
        index++
}

function approve(address arg1, uint256 arg2) {
    if arg2:
        require not allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function increaseApproval(address arg1, uint256 arg2) {
    require allowance[address(msg.sender)][address(arg1)] + arg2 >= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
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

function mint(address arg1, uint256 arg2) {
    require msg.sender == owner
    require totalSupply + arg2 >= totalSupply
    totalSupply += arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    if not indexes[address(arg1)]:
        addresses[stor5] = arg1
        indexes[address(arg1)] = index
        index++
    emit Mint(arg2, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    if not indexes[address(arg1)]:
        addresses[stor5] = arg1
        indexes[address(arg1)] = index
        index++
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function distribute() payable {
    mem[64] = 96
    s = 0
    s = 0
    idx = 1
    while idx < index:
        if balanceOf[stor3[idx]]:
            require balanceOf[stor3[idx]]
            require balanceOf[stor3[idx]] * msg.value / balanceOf[stor3[idx]] == msg.value
        require totalSupply
        mem[32] = 3
        mem[mem[64]] = addresses[idx]
        mem[mem[64] + 32] = balanceOf[stor3[idx]]
        mem[mem[64] + 64] = balanceOf[stor3[idx]] * msg.value / totalSupply
        mem[mem[64] + 96] = idx
        emit Distribute(addresses[idx], balanceOf[stor3[idx]], balanceOf[stor3[idx]] * msg.value / totalSupply, idx);
        mem[0] = idx
        mem[32] = 3
        call addresses[idx] with:
           value balanceOf[stor3[idx]] * msg.value / totalSupply wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        s = balanceOf[stor3[idx]] * msg.value / totalSupply
        s = balanceOf[stor3[idx]]
        idx = idx + 1
        continue 
    return 1
}



}
