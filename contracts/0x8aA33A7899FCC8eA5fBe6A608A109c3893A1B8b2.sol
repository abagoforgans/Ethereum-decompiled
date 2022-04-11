contract main {


// =======================  Init code  ======================


uint256 stor0;
address stor3;

function _fallback() payable {
    stor0 = 0
    require not msg.value
    stor3 = msg.sender
    return code.data[64 len 3202]
}



// =====================  Runtime code  =====================


const name = 'Dao.Casino'

const decimals = 18

const symbol = 'BET'


uint256 totalSupply;
mapping of struct balanceOf;
mapping of uint256 allowance;
address owner;
uint8 stor4; offset 160
address newOwner;

function totalSupply() {
    return totalSupply
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)].field_0
}

function owner() {
    return owner
}

function newOwner() {
    return newOwner
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function sealed() {
    return bool(stor4)
}

function _fallback() payable {
    revert
}

function seal() {
    require owner == msg.sender
    require not stor4
    stor4 = 1
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    newOwner = arg1
}

function acceptOwnership() {
    if newOwner == msg.sender:
        emit OwnershipTransferred(owner, newOwner);
        owner = newOwner
}

function approve(address arg1, uint256 arg2) {
    if arg2:
        require not allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transferAnyERC20Token(address arg1, uint256 arg2) {
    require owner == msg.sender
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args owner, arg2
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function transfer(address arg1, uint256 arg2) {
    if balanceOf[address(msg.sender)].field_0 < arg2:
        return 0
    if arg2 <= 0:
        return 0
    if balanceOf[address(arg1)].field_0 + arg2 <= balanceOf[address(arg1)].field_0:
        return 0
    require arg2 <= balanceOf[address(msg.sender)].field_0
    balanceOf[address(msg.sender)].field_0 -= arg2
    require arg2 + balanceOf[arg1].field_0 >= balanceOf[arg1].field_0
    require arg2 + balanceOf[arg1].field_0 >= arg2
    balanceOf[address(arg1)].field_0 = arg2 + balanceOf[arg1].field_0
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if balanceOf[address(arg1)].field_0 < arg3:
        return 0
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        return 0
    if arg3 <= 0:
        return 0
    if balanceOf[address(arg2)].field_0 + arg3 <= balanceOf[address(arg2)].field_0:
        return 0
    require arg3 <= balanceOf[address(arg1)].field_0
    balanceOf[address(arg1)].field_0 -= arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    require arg3 + balanceOf[address(arg2)].field_0 >= balanceOf[address(arg2)].field_0
    require arg3 + balanceOf[address(arg2)].field_0 >= arg3
    balanceOf[address(arg2)].field_0 += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function fill(uint256[] arg1) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require owner == msg.sender
    require not stor4
    s = 0
    s = 0
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        _13 = mem[(32 * idx) + 128]
        require idx < arg1.length
        _15 = mem[(32 * idx) + 128]
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 1
        if balanceOf[mem[(32 * idx) + 140 len 20]].field_0:
            s = mem[(32 * idx) + 128 len 12]
            s = mem[(32 * idx) + 140 len 20]
            idx = idx + 1
            continue 
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 1
        balanceOf[address(mem[(32 * idx) + 128])].field_0 = mem[(32 * idx) + 128 len 12]
        balanceOf[address(mem[(32 * idx) + 128])].field_96 = 0
        require mem[(32 * idx) + 128 len 12] + totalSupply >= totalSupply
        require mem[(32 * idx) + 128 len 12] + totalSupply >= mem[(32 * idx) + 128 len 12]
        totalSupply += mem[(32 * idx) + 128 len 12]
        mem[(32 * arg1.length) + 128] = mem[(32 * idx) + 128 len 12]
        emit Transfer(mem[(32 * arg1.length) + 128], 0, address(_13));
        s = Mask(96, 160, _15) >> 160
        s = address(_13)
        idx = idx + 1
        continue 
}



}
