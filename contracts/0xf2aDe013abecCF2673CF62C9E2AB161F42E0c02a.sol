contract main {




// =====================  Runtime code  =====================


const name = 'CoinBene Coin'

const decimals = 8

const version = ''

const symbol = ''


uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint8 stor3; offset 160
address founderAddress;
mapping of uint8 stor4;
mapping of uint8 stor5;

function totalSupply() payable {
    return totalSupply
}

function founder() payable {
    return founderAddress
}

function paused() payable {
    return bool(uint8(stor3.field_160))
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function frozenAccount(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor4[arg1])
}

function migrate(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor5[arg1])
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function unpause() payable {
    require msg.sender == founderAddress
    require uint8(stor3.field_160)
    uint8(stor3.field_160) = 0
    emit Unpause()
}

function pause() payable {
    require msg.sender == founderAddress
    require not uint8(stor3.field_160)
    uint8(stor3.field_160) = 1
    emit Pause()
}

function sub_99139103(?) payable {
    require calldata.size - 4 >= 32
    require msg.sender == founderAddress
    require arg1
    emit 0x339344af: founderAddress, arg1
    founderAddress = arg1
}

function FreezeAccount(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require msg.sender == founderAddress
    stor4[address(arg1)] = uint8(arg2)
    emit FrozenAccount(arg2, arg1);
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require not uint8(stor3.field_160)
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function burn(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= balanceOf[msg.sender]
    require arg1 <= balanceOf[msg.sender]
    balanceOf[msg.sender] -= arg1
    require arg1 <= totalSupply
    totalSupply -= arg1
    emit 0xfeddf252: arg1, msg.sender, 0
    emit Burn(arg1, msg.sender);
}

function increaseApproval(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require not uint8(stor3.field_160)
    require arg2 + allowance[msg.sender][address(arg1)] >= allowance[msg.sender][address(arg1)]
    allowance[msg.sender][address(arg1)] += arg2
    emit Approval((arg2 + allowance[msg.sender][address(arg1)]), msg.sender, arg1);
    return 1
}

function decreaseApproval(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require not uint8(stor3.field_160)
    if arg2 >= allowance[msg.sender][address(arg1)]:
        allowance[msg.sender][address(arg1)] = 0
    else:
        require arg2 <= allowance[msg.sender][address(arg1)]
        allowance[msg.sender][address(arg1)] -= arg2
    emit Approval(allowance[msg.sender][address(arg1)], msg.sender, arg1);
    return 1
}

function burnFrom(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 <= allowance[address(arg1)][msg.sender]
    require arg2 <= balanceOf[address(arg1)]
    require arg2 <= allowance[address(arg1)][msg.sender]
    allowance[address(arg1)][msg.sender] -= arg2
    require arg2 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg2
    require arg2 <= totalSupply
    totalSupply -= arg2
    emit 0xfeddf252: arg2, arg1, 0
    emit Burn(arg2, arg1);
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require not stor4[address(msg.sender)]
    require not stor4[address(arg1)]
    require not uint8(stor3.field_160)
    require arg1
    require arg2 <= balanceOf[msg.sender]
    require arg2 <= balanceOf[msg.sender]
    balanceOf[msg.sender] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit 0xfeddf252: arg2, msg.sender, arg1
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require not uint8(stor3.field_160)
    require not stor4[address(arg1)]
    require not stor4[address(arg2)]
    require not uint8(stor3.field_160)
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= allowance[address(arg1)][msg.sender]
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 + balanceOf[arg2] >= balanceOf[arg2]
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    require arg3 <= allowance[address(arg1)][msg.sender]
    allowance[address(arg1)][msg.sender] -= arg3
    emit 0xfeddf252: arg3, arg1, arg2
    return 1
}

function init(address[] arg1, uint256[] arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = 0
    require msg.sender == founderAddress
    require arg1.length == arg2.length
    idx = 0
    s = 0
    while idx < arg1.length:
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 5
        if stor5[mem[(32 * idx) + 140 len 20]]:
            idx = idx + 1
            s = s
            continue 
        require idx < arg1.length
        require mem[(32 * idx) + 140 len 20]
        require idx < arg2.length
        require mem[(32 * idx) + (32 * arg1.length) + 160] > 0
        require idx < arg1.length
        stor5[mem[(32 * idx) + 140 len 20]] = 1
        require idx < arg2.length
        _55 = mem[(32 * idx) + (32 * arg1.length) + 160]
        require mem[(32 * idx) + (32 * arg1.length) + 160] + s >= s
        require idx < arg2.length
        require idx < arg1.length
        require mem[(32 * idx) + (32 * arg1.length) + 160] + balanceOf[mem[(32 * idx) + 140 len 20]] >= balanceOf[mem[(32 * idx) + 140 len 20]]
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 1
        balanceOf[mem[(32 * idx) + 140 len 20]] += mem[(32 * idx) + (32 * arg1.length) + 160]
        require idx < arg1.length
        _65 = mem[(32 * idx) + 128]
        require idx < arg2.length
        mem[(32 * arg1.length) + (32 * arg2.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 160]
        emit Migrate(mem[(32 * arg1.length) + (32 * arg2.length) + 160], address(_65));
        require idx < arg1.length
        _71 = mem[(32 * idx) + 128]
        require idx < arg2.length
        mem[(32 * arg1.length) + (32 * arg2.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 160]
        emit 0xfeddf252: mem[(32 * arg1.length) + (32 * arg2.length) + 160], msg.sender, address(_71)
        idx = idx + 1
        s = _55 + s
        continue 
    require s <= balanceOf[address(stor3.field_0)]
    balanceOf[address(stor3.field_0)] -= s
}



}
