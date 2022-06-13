contract main {




// =====================  Runtime code  =====================


#
#  - biteFish(uint256 arg1, uint256 arg2)
#  - sub_be3791bb(?)
#
const name = 'KillFish.io'

const implementsERC721 = 1

const sub_13624cb6(?) = (168 * 24 * 3600)

const minPayment = 10^16

const sub_39a1121d(?) = 5

const sub_40a07917(?) = 5

const sub_62d09cfa(?) = (48 * 24 * 3600)

const symbol = 'FISH'

const sub_995336f5(?) = 10

const sub_c2381ab1(?) = 5

const sub_c8019bf3(?) = 5

const sub_d86fdd24(?) = 20

const sub_dd6ab34f(?) = 5


address owner;
array of struct fish;
mapping of address ownerOf;
mapping of uint256 balanceOf;
uint256 totalSupply;
uint256 totalShares;
uint256 sub_886b0905;
uint256 balanceOwner;
uint256 balanceMarketing;
uint256 maxGasPrice;

function getFish(uint256 arg1) {
    require arg1 < fish.length
    mem[640] = stor[sha3(('name', 'fish', 1) + (6 * arg1) + 1)].field_0
    idx = 640
    s = 0
    while stor[('name', 'fish', 1) + (6 * arg1) + 1].length + 608 > idx:
        mem[idx + 32] = stor[s + sha3(('name', 'fish', 1) + (6 * arg1) + 1)].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return fish[arg1].field_0, 
           Array(len=stor[('name', 'fish', 1) + (6 * arg1) + 1].length, data=mem[640 len stor[('name', 'fish', 1) + (6 * arg1) + 1].length]),
           fish[arg1].field_512,
           fish[arg1].field_512,
           fish[arg1].field_512,
           fish[arg1].field_768,
           fish[arg1].field_1024,
           fish[arg1].field_1280
}

function totalSupply() {
    return totalSupply
}

function balanceOwner() {
    return balanceOwner
}

function totalShares() {
    return totalShares
}

function maxGasPrice() {
    return maxGasPrice
}

function ownerOf(uint256 arg1) {
    return ownerOf[arg1]
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function sub_886b0905(?) {
    return sub_886b0905
}

function owner() {
    return owner
}

function balanceMarketing() {
    return balanceMarketing
}

function _fallback() payable {
    revert
}

function isOwner() {
    return (msg.sender == owner)
}

function statusLive(uint256 arg1) {
    require arg1 < fish.length
    if fish[arg1].field_768 != 0:
        return 1
    else:
        return 0
}

function updateMaxGasPrice(uint256 arg1) {
    require msg.sender == owner
    require arg1 >= 10^10
    maxGasPrice = arg1
    emit 0xea062c96: arg1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function statusHunter(uint256 arg1) {
    require arg1 < fish.length
    require fish[arg1].field_640 + (48 * 24 * 3600) >= fish[arg1].field_640
    if block.timestamp > fish[arg1].field_640 + (48 * 24 * 3600):
        return 1
    else:
        return 0
}

function statusPrey(uint256 arg1) {
    require arg1 < fish.length
    require fish[arg1].field_576 + (168 * 24 * 3600) >= fish[arg1].field_576
    if block.timestamp > fish[arg1].field_576 + (168 * 24 * 3600):
        return 1
    else:
        return 0
}

function updateNickname(uint256 arg1, string arg2) {
    if ownerOf[arg1] != msg.sender:
        revert with 0, 'not token owner'
    require arg1 < fish.length
    stor[sha3((6 * arg1) + ('name', 'fish', 1) + 1)][].field_0 = Array(len=arg2.length, data=arg2[all])
    emit UpdateNickname(Array(len=arg2.length, data=arg2[all]), arg1);
    return 1
}

function withdrawalOwner(address arg1, uint256 arg2) {
    require msg.sender == owner
    require arg2 <= balanceOwner
    balanceOwner -= arg2
    emit WithdrawalOwner(arg2, arg1);
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdrawalMarketing(address arg1, uint256 arg2) {
    require msg.sender == owner
    require arg2 <= balanceMarketing
    balanceMarketing -= arg2
    emit WithdrawalMarketing(arg2, arg1);
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transfer(address arg1, uint256 arg2) {
    if ownerOf[arg2] != msg.sender:
        revert with 0, 'not token owner'
    require balanceOf[address(arg1)] + 1 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)]++
    require 1 <= balanceOf[msg.sender]
    balanceOf[address(msg.sender)] = balanceOf[msg.sender] - 1
    ownerOf[arg2] = arg1
    emit Transfer(msg.sender, arg1, arg2);
    return 1
}

function shareToValue(uint256 arg1) {
    if 0 == totalShares:
        return 0
    if not arg1:
        require totalShares > 0
        if totalShares:
            return (0 / totalShares)
    else:
        require sub_886b0905 * arg1 / arg1 == sub_886b0905
        require totalShares > 0
        if totalShares:
            return (sub_886b0905 * arg1 / totalShares)
    ('iszero', ('stor', ('name', 'totalShares', 5)))
    revert
}

function valueToShare(uint256 arg1) {
    if 0 == sub_886b0905:
        return 0
    if not arg1:
        require sub_886b0905 > 0
        if sub_886b0905:
            return (0 / sub_886b0905)
    else:
        require totalShares * arg1 / arg1 == totalShares
        require sub_886b0905 > 0
        if sub_886b0905:
            return (totalShares * arg1 / sub_886b0905)
    ('iszero', ('stor', ('name', 'sub_886b0905', 6)))
    revert
}

function destroyFish(uint256 arg1) {
    if ownerOf[arg1] != msg.sender:
        revert with 0, 'not token owner'
    if block.gasprice > maxGasPrice:
        revert with 0, 'gas price > maxGasPrice'
    require arg1 < fish.length
    if 0 == totalShares:
        require fish[arg1].field_768 <= totalShares
        totalShares -= fish[arg1].field_768
        require arg1 < fish.length
        fish[arg1].field_768 = 0
        fish[arg1].field_1024 = 0
        fish[arg1].field_256 = 0
        fish[arg1].field_257 = 0
        fish[arg1].field_264 = mem[128 len 31]
        idx = 0
        while stor[(6 * arg1) + ('name', 'fish', 1) + 1].length + 31 / 32 > idx:
            stor[idx + sha3((6 * arg1) + ('name', 'fish', 1) + 1)].field_0 = 0
            idx = idx + 1
            continue 
        require arg1 < fish.length
        fish[arg1].field_576 = uint64(block.timestamp)
        require balanceOf[0] + 1 >= balanceOf[0]
        balanceOf[0]++
        require 1 <= balanceOf[msg.sender]
        balanceOf[address(msg.sender)] = balanceOf[msg.sender] - 1
        ownerOf[arg1] = 0
        emit Transfer(msg.sender, 0, arg1);
        require balanceOwner >= balanceOwner
        require 0 <= sub_886b0905
        emit DestroyFish(fish[arg1].field_768, 0, arg1);
        call msg.sender with:
             gas 2300 wei
    else:
        if not fish[arg1].field_768:
            require totalShares > 0
            require totalShares
            if not 0 / totalShares:
                if not 0 / totalShares:
                    require 0 <= 0 / totalShares
                    require fish[arg1].field_768 <= totalShares
                    totalShares -= fish[arg1].field_768
                    require arg1 < fish.length
                    fish[arg1].field_768 = 0
                    fish[arg1].field_1024 = 0
                    fish[arg1].field_256 = 0
                    fish[arg1].field_257 = 0
                    fish[arg1].field_264 = mem[128 len 31]
                    idx = 0
                    while stor[(6 * arg1) + ('name', 'fish', 1) + 1].length + 31 / 32 > idx:
                        stor[idx + sha3((6 * arg1) + ('name', 'fish', 1) + 1)].field_0 = 0
                        idx = idx + 1
                        continue 
                    require arg1 < fish.length
                    fish[arg1].field_576 = uint64(block.timestamp)
                    require balanceOf[0] + 1 >= balanceOf[0]
                    balanceOf[0]++
                    require 1 <= balanceOf[msg.sender]
                    balanceOf[address(msg.sender)] = balanceOf[msg.sender] - 1
                    ownerOf[arg1] = 0
                    emit Transfer(msg.sender, 0, arg1);
                    require balanceOwner >= balanceOwner
                    require 0 / totalShares <= sub_886b0905
                    require 0 <= sub_886b0905 - (0 / totalShares)
                    sub_886b0905 -= 0 / totalShares
                    emit DestroyFish(fish[arg1].field_768, 0 / totalShares, arg1);
                    call msg.sender with:
                       value 0 / totalShares wei
                         gas 2300 * is_zero(value) wei
                else:
                    require 5 * 0 / totalShares / 0 / totalShares == 5
                    require 0 <= 0 / totalShares
                    require 5 * 0 / totalShares / 100 <= 0 / totalShares
                    require fish[arg1].field_768 <= totalShares
                    totalShares -= fish[arg1].field_768
                    require arg1 < fish.length
                    fish[arg1].field_768 = 0
                    fish[arg1].field_1024 = 0
                    fish[arg1].field_256 = 0
                    fish[arg1].field_257 = 0
                    fish[arg1].field_264 = mem[128 len 31]
                    idx = 0
                    while stor[(6 * arg1) + ('name', 'fish', 1) + 1].length + 31 / 32 > idx:
                        stor[idx + sha3((6 * arg1) + ('name', 'fish', 1) + 1)].field_0 = 0
                        idx = idx + 1
                        continue 
                    require arg1 < fish.length
                    fish[arg1].field_576 = uint64(block.timestamp)
                    require balanceOf[0] + 1 >= balanceOf[0]
                    balanceOf[0]++
                    require 1 <= balanceOf[msg.sender]
                    balanceOf[address(msg.sender)] = balanceOf[msg.sender] - 1
                    ownerOf[arg1] = 0
                    emit Transfer(msg.sender, 0, arg1);
                    require (5 * 0 / totalShares / 100) + balanceOwner >= balanceOwner
                    balanceOwner += 5 * 0 / totalShares / 100
                    require (0 / totalShares) - (5 * 0 / totalShares / 100) <= sub_886b0905
                    require 5 * 0 / totalShares / 100 <= sub_886b0905 - (0 / totalShares) + (5 * 0 / totalShares / 100)
                    sub_886b0905 -= 0 / totalShares
                    emit DestroyFish(fish[arg1].field_768, (0 / totalShares) - (5 * 0 / totalShares / 100), arg1);
                    call msg.sender with:
                       value (0 / totalShares) - (5 * 0 / totalShares / 100) wei
                         gas 2300 * is_zero(value) wei
            else:
                require 5 * 0 / totalShares / 0 / totalShares == 5
                if not 0 / totalShares:
                    require 5 * 0 / totalShares / 100 <= 0 / totalShares
                    require 0 <= (0 / totalShares) - (5 * 0 / totalShares / 100)
                    require fish[arg1].field_768 <= totalShares
                    totalShares -= fish[arg1].field_768
                    require arg1 < fish.length
                    fish[arg1].field_768 = 0
                    fish[arg1].field_1024 = 0
                    fish[arg1].field_256 = 0
                    fish[arg1].field_257 = 0
                    fish[arg1].field_264 = mem[128 len 31]
                    idx = 0
                    while stor[(6 * arg1) + ('name', 'fish', 1) + 1].length + 31 / 32 > idx:
                        stor[idx + sha3((6 * arg1) + ('name', 'fish', 1) + 1)].field_0 = 0
                        idx = idx + 1
                        continue 
                    require arg1 < fish.length
                    fish[arg1].field_576 = uint64(block.timestamp)
                    require balanceOf[0] + 1 >= balanceOf[0]
                    balanceOf[0]++
                    require 1 <= balanceOf[msg.sender]
                    balanceOf[address(msg.sender)] = balanceOf[msg.sender] - 1
                    ownerOf[arg1] = 0
                    emit Transfer(msg.sender, 0, arg1);
                    require balanceOwner >= balanceOwner
                    require (0 / totalShares) - (5 * 0 / totalShares / 100) <= sub_886b0905
                    require 0 <= sub_886b0905 - (0 / totalShares) + (5 * 0 / totalShares / 100)
                    sub_886b0905 = sub_886b0905 - (0 / totalShares) + (5 * 0 / totalShares / 100)
                    emit DestroyFish(fish[arg1].field_768, (0 / totalShares) - (5 * 0 / totalShares / 100), arg1);
                    call msg.sender with:
                       value (0 / totalShares) - (5 * 0 / totalShares / 100) wei
                         gas 2300 * is_zero(value) wei
                else:
                    require 5 * 0 / totalShares / 0 / totalShares == 5
                    require 5 * 0 / totalShares / 100 <= 0 / totalShares
                    require 5 * 0 / totalShares / 100 <= (0 / totalShares) - (5 * 0 / totalShares / 100)
                    require fish[arg1].field_768 <= totalShares
                    totalShares -= fish[arg1].field_768
                    require arg1 < fish.length
                    fish[arg1].field_768 = 0
                    fish[arg1].field_1024 = 0
                    fish[arg1].field_256 = 0
                    fish[arg1].field_257 = 0
                    fish[arg1].field_264 = mem[128 len 31]
                    idx = 0
                    while stor[(6 * arg1) + ('name', 'fish', 1) + 1].length + 31 / 32 > idx:
                        stor[idx + sha3((6 * arg1) + ('name', 'fish', 1) + 1)].field_0 = 0
                        idx = idx + 1
                        continue 
                    require arg1 < fish.length
                    fish[arg1].field_576 = uint64(block.timestamp)
                    require balanceOf[0] + 1 >= balanceOf[0]
                    balanceOf[0]++
                    require 1 <= balanceOf[msg.sender]
                    balanceOf[address(msg.sender)] = balanceOf[msg.sender] - 1
                    ownerOf[arg1] = 0
                    emit Transfer(msg.sender, 0, arg1);
                    require (5 * 0 / totalShares / 100) + balanceOwner >= balanceOwner
                    balanceOwner += 5 * 0 / totalShares / 100
                    require (0 / totalShares) - (2 * 5 * 0 / totalShares / 100) <= sub_886b0905
                    require 5 * 0 / totalShares / 100 <= sub_886b0905 - (0 / totalShares) + (2 * 5 * 0 / totalShares / 100)
                    sub_886b0905 = sub_886b0905 - (0 / totalShares) + (5 * 0 / totalShares / 100)
                    emit DestroyFish(fish[arg1].field_768, (0 / totalShares) - (2 * 5 * 0 / totalShares / 100), arg1);
                    call msg.sender with:
                       value (0 / totalShares) - (2 * 5 * 0 / totalShares / 100) wei
                         gas 2300 * is_zero(value) wei
        else:
            require sub_886b0905 * fish[arg1].field_768 / fish[arg1].field_768 == sub_886b0905
            require totalShares > 0
            require totalShares
            if not sub_886b0905 * fish[arg1].field_768 / totalShares:
                if not sub_886b0905 * fish[arg1].field_768 / totalShares:
                    require 0 <= sub_886b0905 * fish[arg1].field_768 / totalShares
                    require fish[arg1].field_768 <= totalShares
                    totalShares -= fish[arg1].field_768
                    require arg1 < fish.length
                    fish[arg1].field_768 = 0
                    fish[arg1].field_1024 = 0
                    fish[arg1].field_256 = 0
                    fish[arg1].field_257 = 0
                    fish[arg1].field_264 = mem[128 len 31]
                    idx = 0
                    while stor[(6 * arg1) + ('name', 'fish', 1) + 1].length + 31 / 32 > idx:
                        stor[idx + sha3((6 * arg1) + ('name', 'fish', 1) + 1)].field_0 = 0
                        idx = idx + 1
                        continue 
                    require arg1 < fish.length
                    fish[arg1].field_576 = uint64(block.timestamp)
                    require balanceOf[0] + 1 >= balanceOf[0]
                    balanceOf[0]++
                    require 1 <= balanceOf[msg.sender]
                    balanceOf[address(msg.sender)] = balanceOf[msg.sender] - 1
                    ownerOf[arg1] = 0
                    emit Transfer(msg.sender, 0, arg1);
                    require balanceOwner >= balanceOwner
                    require sub_886b0905 * fish[arg1].field_768 / totalShares <= sub_886b0905
                    require 0 <= sub_886b0905 - (sub_886b0905 * fish[arg1].field_768 / totalShares)
                    sub_886b0905 -= sub_886b0905 * fish[arg1].field_768 / totalShares
                    emit DestroyFish(fish[arg1].field_768, sub_886b0905 * fish[arg1].field_768 / totalShares, arg1);
                    call msg.sender with:
                       value sub_886b0905 * fish[arg1].field_768 / totalShares wei
                         gas 2300 * is_zero(value) wei
                else:
                    require 5 * sub_886b0905 * fish[arg1].field_768 / totalShares / sub_886b0905 * fish[arg1].field_768 / totalShares == 5
                    require 0 <= sub_886b0905 * fish[arg1].field_768 / totalShares
                    require 5 * sub_886b0905 * fish[arg1].field_768 / totalShares / 100 <= sub_886b0905 * fish[arg1].field_768 / totalShares
                    require fish[arg1].field_768 <= totalShares
                    totalShares -= fish[arg1].field_768
                    require arg1 < fish.length
                    fish[arg1].field_768 = 0
                    fish[arg1].field_1024 = 0
                    fish[arg1].field_256 = 0
                    fish[arg1].field_257 = 0
                    fish[arg1].field_264 = mem[128 len 31]
                    idx = 0
                    while stor[(6 * arg1) + ('name', 'fish', 1) + 1].length + 31 / 32 > idx:
                        stor[idx + sha3((6 * arg1) + ('name', 'fish', 1) + 1)].field_0 = 0
                        idx = idx + 1
                        continue 
                    require arg1 < fish.length
                    fish[arg1].field_576 = uint64(block.timestamp)
                    require balanceOf[0] + 1 >= balanceOf[0]
                    balanceOf[0]++
                    require 1 <= balanceOf[msg.sender]
                    balanceOf[address(msg.sender)] = balanceOf[msg.sender] - 1
                    ownerOf[arg1] = 0
                    emit Transfer(msg.sender, 0, arg1);
                    require (5 * sub_886b0905 * fish[arg1].field_768 / totalShares / 100) + balanceOwner >= balanceOwner
                    balanceOwner += 5 * sub_886b0905 * fish[arg1].field_768 / totalShares / 100
                    require (sub_886b0905 * fish[arg1].field_768 / totalShares) - (5 * sub_886b0905 * fish[arg1].field_768 / totalShares / 100) <= sub_886b0905
                    require 5 * sub_886b0905 * fish[arg1].field_768 / totalShares / 100 <= sub_886b0905 - (sub_886b0905 * fish[arg1].field_768 / totalShares) + (5 * sub_886b0905 * fish[arg1].field_768 / totalShares / 100)
                    sub_886b0905 -= sub_886b0905 * fish[arg1].field_768 / totalShares
                    emit DestroyFish(fish[arg1].field_768, (sub_886b0905 * fish[arg1].field_768 / totalShares) - (5 * sub_886b0905 * fish[arg1].field_768 / totalShares / 100), arg1);
                    call msg.sender with:
                       value (sub_886b0905 * fish[arg1].field_768 / totalShares) - (5 * sub_886b0905 * fish[arg1].field_768 / totalShares / 100) wei
                         gas 2300 * is_zero(value) wei
            else:
                require 5 * sub_886b0905 * fish[arg1].field_768 / totalShares / sub_886b0905 * fish[arg1].field_768 / totalShares == 5
                if not sub_886b0905 * fish[arg1].field_768 / totalShares:
                    require 5 * sub_886b0905 * fish[arg1].field_768 / totalShares / 100 <= sub_886b0905 * fish[arg1].field_768 / totalShares
                    require 0 <= (sub_886b0905 * fish[arg1].field_768 / totalShares) - (5 * sub_886b0905 * fish[arg1].field_768 / totalShares / 100)
                    require fish[arg1].field_768 <= totalShares
                    totalShares -= fish[arg1].field_768
                    require arg1 < fish.length
                    fish[arg1].field_768 = 0
                    fish[arg1].field_1024 = 0
                    fish[arg1].field_256 = 0
                    fish[arg1].field_257 = 0
                    fish[arg1].field_264 = mem[128 len 31]
                    idx = 0
                    while stor[(6 * arg1) + ('name', 'fish', 1) + 1].length + 31 / 32 > idx:
                        stor[idx + sha3((6 * arg1) + ('name', 'fish', 1) + 1)].field_0 = 0
                        idx = idx + 1
                        continue 
                    require arg1 < fish.length
                    fish[arg1].field_576 = uint64(block.timestamp)
                    require balanceOf[0] + 1 >= balanceOf[0]
                    balanceOf[0]++
                    require 1 <= balanceOf[msg.sender]
                    balanceOf[address(msg.sender)] = balanceOf[msg.sender] - 1
                    ownerOf[arg1] = 0
                    emit Transfer(msg.sender, 0, arg1);
                    require balanceOwner >= balanceOwner
                    require (sub_886b0905 * fish[arg1].field_768 / totalShares) - (5 * sub_886b0905 * fish[arg1].field_768 / totalShares / 100) <= sub_886b0905
                    require 0 <= sub_886b0905 - (sub_886b0905 * fish[arg1].field_768 / totalShares) + (5 * sub_886b0905 * fish[arg1].field_768 / totalShares / 100)
                    sub_886b0905 = sub_886b0905 - (sub_886b0905 * fish[arg1].field_768 / totalShares) + (5 * sub_886b0905 * fish[arg1].field_768 / totalShares / 100)
                    emit DestroyFish(fish[arg1].field_768, (sub_886b0905 * fish[arg1].field_768 / totalShares) - (5 * sub_886b0905 * fish[arg1].field_768 / totalShares / 100), arg1);
                    call msg.sender with:
                       value (sub_886b0905 * fish[arg1].field_768 / totalShares) - (5 * sub_886b0905 * fish[arg1].field_768 / totalShares / 100) wei
                         gas 2300 * is_zero(value) wei
                else:
                    require 5 * sub_886b0905 * fish[arg1].field_768 / totalShares / sub_886b0905 * fish[arg1].field_768 / totalShares == 5
                    require 5 * sub_886b0905 * fish[arg1].field_768 / totalShares / 100 <= sub_886b0905 * fish[arg1].field_768 / totalShares
                    require 5 * sub_886b0905 * fish[arg1].field_768 / totalShares / 100 <= (sub_886b0905 * fish[arg1].field_768 / totalShares) - (5 * sub_886b0905 * fish[arg1].field_768 / totalShares / 100)
                    require fish[arg1].field_768 <= totalShares
                    totalShares -= fish[arg1].field_768
                    require arg1 < fish.length
                    fish[arg1].field_768 = 0
                    fish[arg1].field_1024 = 0
                    fish[arg1].field_256 = 0
                    fish[arg1].field_257 = 0
                    fish[arg1].field_264 = mem[128 len 31]
                    idx = 0
                    while stor[(6 * arg1) + ('name', 'fish', 1) + 1].length + 31 / 32 > idx:
                        stor[idx + sha3((6 * arg1) + ('name', 'fish', 1) + 1)].field_0 = 0
                        idx = idx + 1
                        continue 
                    require arg1 < fish.length
                    fish[arg1].field_576 = uint64(block.timestamp)
                    require balanceOf[0] + 1 >= balanceOf[0]
                    balanceOf[0]++
                    require 1 <= balanceOf[msg.sender]
                    balanceOf[address(msg.sender)] = balanceOf[msg.sender] - 1
                    ownerOf[arg1] = 0
                    emit Transfer(msg.sender, 0, arg1);
                    require (5 * sub_886b0905 * fish[arg1].field_768 / totalShares / 100) + balanceOwner >= balanceOwner
                    balanceOwner += 5 * sub_886b0905 * fish[arg1].field_768 / totalShares / 100
                    require (sub_886b0905 * fish[arg1].field_768 / totalShares) - (2 * 5 * sub_886b0905 * fish[arg1].field_768 / totalShares / 100) <= sub_886b0905
                    require 5 * sub_886b0905 * fish[arg1].field_768 / totalShares / 100 <= sub_886b0905 - (sub_886b0905 * fish[arg1].field_768 / totalShares) + (2 * 5 * sub_886b0905 * fish[arg1].field_768 / totalShares / 100)
                    sub_886b0905 = sub_886b0905 - (sub_886b0905 * fish[arg1].field_768 / totalShares) + (5 * sub_886b0905 * fish[arg1].field_768 / totalShares / 100)
                    emit DestroyFish(fish[arg1].field_768, (sub_886b0905 * fish[arg1].field_768 / totalShares) - (2 * 5 * sub_886b0905 * fish[arg1].field_768 / totalShares / 100), arg1);
                    call msg.sender with:
                       value (sub_886b0905 * fish[arg1].field_768 / totalShares) - (2 * 5 * sub_886b0905 * fish[arg1].field_768 / totalShares / 100) wei
                         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function feedFish(uint256 arg1) payable {
    if msg.value < 10^16:
        revert with 0, 'msg.value < minPayment'
    if block.gasprice > maxGasPrice:
        revert with 0, 'gas price > maxGasPrice'
    require arg1 < fish.length
    if 0 == fish[arg1].field_768:
        revert with 0, 'fish dead'
    if not msg.value:
        if not msg.value:
            require 0 <= msg.value
            require msg.value + sub_886b0905 >= sub_886b0905
            sub_886b0905 += msg.value
            require balanceMarketing >= balanceMarketing
            if 0 == totalShares:
                require msg.value + totalShares >= totalShares
                totalShares += msg.value
                require arg1 < fish.length
                require msg.value + fish[arg1].field_768 >= fish[arg1].field_768
                require arg1 < fish.length
                fish[arg1].field_768 += msg.value
                require msg.value + fish[arg1].field_1280 >= fish[arg1].field_1280
                require arg1 < fish.length
                fish[arg1].field_1280 += msg.value
                require arg1 < fish.length
                if msg.value < fish[arg1].field_1024:
                    require msg.value <= fish[arg1].field_1024
                    require arg1 < fish.length
                    fish[arg1].field_1024 -= msg.value
                else:
                    if 0 == totalShares:
                        require arg1 < fish.length
                        fish[arg1].field_1024 = 0
                    else:
                        if not fish[arg1].field_768:
                            require totalShares > 0
                            require totalShares
                            if not 0 / totalShares:
                                require arg1 < fish.length
                                fish[arg1].field_1024 = 0
                            else:
                                require 5 * 0 / totalShares / 0 / totalShares == 5
                                require arg1 < fish.length
                                fish[arg1].field_1024 = 5 * 0 / totalShares / 100
                        else:
                            require sub_886b0905 * fish[arg1].field_768 / fish[arg1].field_768 == sub_886b0905
                            require totalShares > 0
                            require totalShares
                            if not sub_886b0905 * fish[arg1].field_768 / totalShares:
                                require arg1 < fish.length
                                fish[arg1].field_1024 = 0
                            else:
                                require 5 * sub_886b0905 * fish[arg1].field_768 / totalShares / sub_886b0905 * fish[arg1].field_768 / totalShares == 5
                                require arg1 < fish.length
                                fish[arg1].field_1024 = 5 * sub_886b0905 * fish[arg1].field_768 / totalShares / 100
                    fish[arg1].field_576 = uint64(block.timestamp)
                    fish[arg1].field_640 = uint64(block.timestamp)
                emit FeedFish(msg.value, fish[arg1].field_1024, msg.value, arg1);
            else:
                require msg.value <= sub_886b0905
                if not msg.value:
                    require sub_886b0905 - msg.value > 0
                    require sub_886b0905 - msg.value
                    require (0 / sub_886b0905 - msg.value) + totalShares >= totalShares
                    totalShares += 0 / sub_886b0905 - msg.value
                    require arg1 < fish.length
                    require (0 / sub_886b0905 - msg.value) + fish[arg1].field_768 >= fish[arg1].field_768
                    require arg1 < fish.length
                    fish[arg1].field_768 += 0 / sub_886b0905 - msg.value
                    require msg.value + fish[arg1].field_1280 >= fish[arg1].field_1280
                    require arg1 < fish.length
                    fish[arg1].field_1280 += msg.value
                    require arg1 < fish.length
                    if msg.value < fish[arg1].field_1024:
                        require msg.value <= fish[arg1].field_1024
                        require arg1 < fish.length
                        fish[arg1].field_1024 -= msg.value
                    else:
                        if 0 == totalShares:
                            require arg1 < fish.length
                            fish[arg1].field_1024 = 0
                        else:
                            if not fish[arg1].field_768:
                                require totalShares > 0
                                require totalShares
                                if not 0 / totalShares:
                                    require arg1 < fish.length
                                    fish[arg1].field_1024 = 0
                                else:
                                    require 5 * 0 / totalShares / 0 / totalShares == 5
                                    require arg1 < fish.length
                                    fish[arg1].field_1024 = 5 * 0 / totalShares / 100
                            else:
                                require sub_886b0905 * fish[arg1].field_768 / fish[arg1].field_768 == sub_886b0905
                                require totalShares > 0
                                require totalShares
                                if not sub_886b0905 * fish[arg1].field_768 / totalShares:
                                    require arg1 < fish.length
                                    fish[arg1].field_1024 = 0
                                else:
                                    require 5 * sub_886b0905 * fish[arg1].field_768 / totalShares / sub_886b0905 * fish[arg1].field_768 / totalShares == 5
                                    require arg1 < fish.length
                                    fish[arg1].field_1024 = 5 * sub_886b0905 * fish[arg1].field_768 / totalShares / 100
                        fish[arg1].field_576 = uint64(block.timestamp)
                        fish[arg1].field_640 = uint64(block.timestamp)
                    emit FeedFish(0 / sub_886b0905 - msg.value, fish[arg1].field_1024, msg.value, arg1);
                else:
                    require totalShares * msg.value / msg.value == totalShares
                    require sub_886b0905 - msg.value > 0
                    require sub_886b0905 - msg.value
                    require (totalShares * msg.value / sub_886b0905 - msg.value) + totalShares >= totalShares
                    totalShares += totalShares * msg.value / sub_886b0905 - msg.value
                    require arg1 < fish.length
                    require (totalShares * msg.value / sub_886b0905 - msg.value) + fish[arg1].field_768 >= fish[arg1].field_768
                    require arg1 < fish.length
                    fish[arg1].field_768 += totalShares * msg.value / sub_886b0905 - msg.value
                    require msg.value + fish[arg1].field_1280 >= fish[arg1].field_1280
                    require arg1 < fish.length
                    fish[arg1].field_1280 += msg.value
                    require arg1 < fish.length
                    if msg.value < fish[arg1].field_1024:
                        require msg.value <= fish[arg1].field_1024
                        require arg1 < fish.length
                        fish[arg1].field_1024 -= msg.value
                    else:
                        if 0 == totalShares:
                            require arg1 < fish.length
                            fish[arg1].field_1024 = 0
                        else:
                            if not fish[arg1].field_768:
                                require totalShares > 0
                                require totalShares
                                if not 0 / totalShares:
                                    require arg1 < fish.length
                                    fish[arg1].field_1024 = 0
                                else:
                                    require 5 * 0 / totalShares / 0 / totalShares == 5
                                    require arg1 < fish.length
                                    fish[arg1].field_1024 = 5 * 0 / totalShares / 100
                            else:
                                require sub_886b0905 * fish[arg1].field_768 / fish[arg1].field_768 == sub_886b0905
                                require totalShares > 0
                                require totalShares
                                if not sub_886b0905 * fish[arg1].field_768 / totalShares:
                                    require arg1 < fish.length
                                    fish[arg1].field_1024 = 0
                                else:
                                    require 5 * sub_886b0905 * fish[arg1].field_768 / totalShares / sub_886b0905 * fish[arg1].field_768 / totalShares == 5
                                    require arg1 < fish.length
                                    fish[arg1].field_1024 = 5 * sub_886b0905 * fish[arg1].field_768 / totalShares / 100
                        fish[arg1].field_576 = uint64(block.timestamp)
                        fish[arg1].field_640 = uint64(block.timestamp)
                    emit FeedFish(totalShares * msg.value / sub_886b0905 - msg.value, fish[arg1].field_1024, msg.value, arg1);
        else:
            require 5 * msg.value / msg.value == 5
            require 0 <= msg.value
            require 5 * msg.value / 100 <= msg.value
            require msg.value - (5 * msg.value / 100) + sub_886b0905 >= sub_886b0905
            require 0 >= -5 * msg.value / 100
            sub_886b0905 += msg.value
            require balanceMarketing >= balanceMarketing
            if 0 == totalShares:
                require msg.value - (5 * msg.value / 100) + totalShares >= totalShares
                totalShares = msg.value - (5 * msg.value / 100) + totalShares
                require arg1 < fish.length
                require msg.value - (5 * msg.value / 100) + fish[arg1].field_768 >= fish[arg1].field_768
                require arg1 < fish.length
                fish[arg1].field_768 = msg.value - (5 * msg.value / 100) + fish[arg1].field_768
                require msg.value - (5 * msg.value / 100) + fish[arg1].field_1280 >= fish[arg1].field_1280
                require arg1 < fish.length
                fish[arg1].field_1280 = msg.value - (5 * msg.value / 100) + fish[arg1].field_1280
                require arg1 < fish.length
                if msg.value - (5 * msg.value / 100) < fish[arg1].field_1024:
                    require msg.value - (5 * msg.value / 100) <= fish[arg1].field_1024
                    require arg1 < fish.length
                    fish[arg1].field_1024 = fish[arg1].field_1024 - msg.value + (5 * msg.value / 100)
                else:
                    if 0 == totalShares:
                        require arg1 < fish.length
                        fish[arg1].field_1024 = 0
                    else:
                        if not fish[arg1].field_768:
                            require totalShares > 0
                            require totalShares
                            if not 0 / totalShares:
                                require arg1 < fish.length
                                fish[arg1].field_1024 = 0
                            else:
                                require 5 * 0 / totalShares / 0 / totalShares == 5
                                require arg1 < fish.length
                                fish[arg1].field_1024 = 5 * 0 / totalShares / 100
                        else:
                            require sub_886b0905 * fish[arg1].field_768 / fish[arg1].field_768 == sub_886b0905
                            require totalShares > 0
                            require totalShares
                            if not sub_886b0905 * fish[arg1].field_768 / totalShares:
                                require arg1 < fish.length
                                fish[arg1].field_1024 = 0
                            else:
                                require 5 * sub_886b0905 * fish[arg1].field_768 / totalShares / sub_886b0905 * fish[arg1].field_768 / totalShares == 5
                                require arg1 < fish.length
                                fish[arg1].field_1024 = 5 * sub_886b0905 * fish[arg1].field_768 / totalShares / 100
                    fish[arg1].field_576 = uint64(block.timestamp)
                    fish[arg1].field_640 = uint64(block.timestamp)
                emit FeedFish(msg.value - (5 * msg.value / 100), fish[arg1].field_1024, msg.value - (5 * msg.value / 100), arg1);
            else:
                require msg.value - (5 * msg.value / 100) <= sub_886b0905
                if not msg.value - (5 * msg.value / 100):
                    require sub_886b0905 - msg.value + (5 * msg.value / 100) > 0
                    require sub_886b0905 - msg.value + (5 * msg.value / 100)
                    require (0 / sub_886b0905 - msg.value + (5 * msg.value / 100)) + totalShares >= totalShares
                    totalShares += 0 / sub_886b0905 - msg.value + (5 * msg.value / 100)
                    require arg1 < fish.length
                    require (0 / sub_886b0905 - msg.value + (5 * msg.value / 100)) + fish[arg1].field_768 >= fish[arg1].field_768
                    require arg1 < fish.length
                    fish[arg1].field_768 += 0 / sub_886b0905 - msg.value + (5 * msg.value / 100)
                    require msg.value - (5 * msg.value / 100) + fish[arg1].field_1280 >= fish[arg1].field_1280
                    require arg1 < fish.length
                    fish[arg1].field_1280 = msg.value - (5 * msg.value / 100) + fish[arg1].field_1280
                    require arg1 < fish.length
                    if msg.value - (5 * msg.value / 100) < fish[arg1].field_1024:
                        require msg.value - (5 * msg.value / 100) <= fish[arg1].field_1024
                        require arg1 < fish.length
                        fish[arg1].field_1024 = fish[arg1].field_1024 - msg.value + (5 * msg.value / 100)
                    else:
                        if 0 == totalShares:
                            require arg1 < fish.length
                            fish[arg1].field_1024 = 0
                        else:
                            if not fish[arg1].field_768:
                                require totalShares > 0
                                require totalShares
                                if not 0 / totalShares:
                                    require arg1 < fish.length
                                    fish[arg1].field_1024 = 0
                                else:
                                    require 5 * 0 / totalShares / 0 / totalShares == 5
                                    require arg1 < fish.length
                                    fish[arg1].field_1024 = 5 * 0 / totalShares / 100
                            else:
                                require sub_886b0905 * fish[arg1].field_768 / fish[arg1].field_768 == sub_886b0905
                                require totalShares > 0
                                require totalShares
                                if not sub_886b0905 * fish[arg1].field_768 / totalShares:
                                    require arg1 < fish.length
                                    fish[arg1].field_1024 = 0
                                else:
                                    require 5 * sub_886b0905 * fish[arg1].field_768 / totalShares / sub_886b0905 * fish[arg1].field_768 / totalShares == 5
                                    require arg1 < fish.length
                                    fish[arg1].field_1024 = 5 * sub_886b0905 * fish[arg1].field_768 / totalShares / 100
                        fish[arg1].field_576 = uint64(block.timestamp)
                        fish[arg1].field_640 = uint64(block.timestamp)
                    emit FeedFish(0 / sub_886b0905 - msg.value + (5 * msg.value / 100), fish[arg1].field_1024, msg.value - (5 * msg.value / 100), arg1);
                else:
                    require (msg.value * totalShares) - (5 * msg.value / 100 * totalShares) / msg.value - (5 * msg.value / 100) == totalShares
                    require sub_886b0905 - msg.value + (5 * msg.value / 100) > 0
                    require sub_886b0905 - msg.value + (5 * msg.value / 100)
                    require ((msg.value * totalShares) - (5 * msg.value / 100 * totalShares) / sub_886b0905 - msg.value + (5 * msg.value / 100)) + totalShares >= totalShares
                    totalShares += (msg.value * totalShares) - (5 * msg.value / 100 * totalShares) / sub_886b0905 - msg.value + (5 * msg.value / 100)
                    require arg1 < fish.length
                    require ((msg.value * totalShares) - (5 * msg.value / 100 * totalShares) / sub_886b0905 - msg.value + (5 * msg.value / 100)) + fish[arg1].field_768 >= fish[arg1].field_768
                    require arg1 < fish.length
                    fish[arg1].field_768 += (msg.value * totalShares) - (5 * msg.value / 100 * totalShares) / sub_886b0905 - msg.value + (5 * msg.value / 100)
                    require msg.value - (5 * msg.value / 100) + fish[arg1].field_1280 >= fish[arg1].field_1280
                    require arg1 < fish.length
                    fish[arg1].field_1280 = msg.value - (5 * msg.value / 100) + fish[arg1].field_1280
                    require arg1 < fish.length
                    if msg.value - (5 * msg.value / 100) < fish[arg1].field_1024:
                        require msg.value - (5 * msg.value / 100) <= fish[arg1].field_1024
                        require arg1 < fish.length
                        fish[arg1].field_1024 = fish[arg1].field_1024 - msg.value + (5 * msg.value / 100)
                    else:
                        if 0 == totalShares:
                            require arg1 < fish.length
                            fish[arg1].field_1024 = 0
                        else:
                            if not fish[arg1].field_768:
                                require totalShares > 0
                                require totalShares
                                if not 0 / totalShares:
                                    require arg1 < fish.length
                                    fish[arg1].field_1024 = 0
                                else:
                                    require 5 * 0 / totalShares / 0 / totalShares == 5
                                    require arg1 < fish.length
                                    fish[arg1].field_1024 = 5 * 0 / totalShares / 100
                            else:
                                require sub_886b0905 * fish[arg1].field_768 / fish[arg1].field_768 == sub_886b0905
                                require totalShares > 0
                                require totalShares
                                if not sub_886b0905 * fish[arg1].field_768 / totalShares:
                                    require arg1 < fish.length
                                    fish[arg1].field_1024 = 0
                                else:
                                    require 5 * sub_886b0905 * fish[arg1].field_768 / totalShares / sub_886b0905 * fish[arg1].field_768 / totalShares == 5
                                    require arg1 < fish.length
                                    fish[arg1].field_1024 = 5 * sub_886b0905 * fish[arg1].field_768 / totalShares / 100
                        fish[arg1].field_576 = uint64(block.timestamp)
                        fish[arg1].field_640 = uint64(block.timestamp)
                    emit FeedFish((msg.value * totalShares) - (5 * msg.value / 100 * totalShares) / sub_886b0905 - msg.value + (5 * msg.value / 100), fish[arg1].field_1024, msg.value - (5 * msg.value / 100), arg1);
    else:
        require 5 * msg.value / msg.value == 5
        if not msg.value:
            require 5 * msg.value / 100 <= msg.value
            require 0 <= msg.value - (5 * msg.value / 100)
            require msg.value - (5 * msg.value / 100) + sub_886b0905 >= sub_886b0905
            sub_886b0905 = msg.value - (5 * msg.value / 100) + sub_886b0905
            require (5 * msg.value / 100) + balanceMarketing >= balanceMarketing
            balanceMarketing += 5 * msg.value / 100
            if 0 == totalShares:
                require msg.value - (5 * msg.value / 100) + totalShares >= totalShares
                totalShares = msg.value - (5 * msg.value / 100) + totalShares
                require arg1 < fish.length
                require msg.value - (5 * msg.value / 100) + fish[arg1].field_768 >= fish[arg1].field_768
                require arg1 < fish.length
                fish[arg1].field_768 = msg.value - (5 * msg.value / 100) + fish[arg1].field_768
                require msg.value - (5 * msg.value / 100) + fish[arg1].field_1280 >= fish[arg1].field_1280
                require arg1 < fish.length
                fish[arg1].field_1280 = msg.value - (5 * msg.value / 100) + fish[arg1].field_1280
                require arg1 < fish.length
                if msg.value - (5 * msg.value / 100) < fish[arg1].field_1024:
                    require msg.value - (5 * msg.value / 100) <= fish[arg1].field_1024
                    require arg1 < fish.length
                    fish[arg1].field_1024 = fish[arg1].field_1024 - msg.value + (5 * msg.value / 100)
                else:
                    if 0 == totalShares:
                        require arg1 < fish.length
                        fish[arg1].field_1024 = 0
                    else:
                        if not fish[arg1].field_768:
                            require totalShares > 0
                            require totalShares
                            if not 0 / totalShares:
                                require arg1 < fish.length
                                fish[arg1].field_1024 = 0
                            else:
                                require 5 * 0 / totalShares / 0 / totalShares == 5
                                require arg1 < fish.length
                                fish[arg1].field_1024 = 5 * 0 / totalShares / 100
                        else:
                            require sub_886b0905 * fish[arg1].field_768 / fish[arg1].field_768 == sub_886b0905
                            require totalShares > 0
                            require totalShares
                            if not sub_886b0905 * fish[arg1].field_768 / totalShares:
                                require arg1 < fish.length
                                fish[arg1].field_1024 = 0
                            else:
                                require 5 * sub_886b0905 * fish[arg1].field_768 / totalShares / sub_886b0905 * fish[arg1].field_768 / totalShares == 5
                                require arg1 < fish.length
                                fish[arg1].field_1024 = 5 * sub_886b0905 * fish[arg1].field_768 / totalShares / 100
                    fish[arg1].field_576 = uint64(block.timestamp)
                    fish[arg1].field_640 = uint64(block.timestamp)
                emit FeedFish(msg.value - (5 * msg.value / 100), fish[arg1].field_1024, msg.value - (5 * msg.value / 100), arg1);
            else:
                require msg.value - (5 * msg.value / 100) <= sub_886b0905
                if not msg.value - (5 * msg.value / 100):
                    require sub_886b0905 - msg.value + (5 * msg.value / 100) > 0
                    require sub_886b0905 - msg.value + (5 * msg.value / 100)
                    require (0 / sub_886b0905 - msg.value + (5 * msg.value / 100)) + totalShares >= totalShares
                    totalShares += 0 / sub_886b0905 - msg.value + (5 * msg.value / 100)
                    require arg1 < fish.length
                    require (0 / sub_886b0905 - msg.value + (5 * msg.value / 100)) + fish[arg1].field_768 >= fish[arg1].field_768
                    require arg1 < fish.length
                    fish[arg1].field_768 += 0 / sub_886b0905 - msg.value + (5 * msg.value / 100)
                    require msg.value - (5 * msg.value / 100) + fish[arg1].field_1280 >= fish[arg1].field_1280
                    require arg1 < fish.length
                    fish[arg1].field_1280 = msg.value - (5 * msg.value / 100) + fish[arg1].field_1280
                    require arg1 < fish.length
                    if msg.value - (5 * msg.value / 100) < fish[arg1].field_1024:
                        require msg.value - (5 * msg.value / 100) <= fish[arg1].field_1024
                        require arg1 < fish.length
                        fish[arg1].field_1024 = fish[arg1].field_1024 - msg.value + (5 * msg.value / 100)
                    else:
                        if 0 == totalShares:
                            require arg1 < fish.length
                            fish[arg1].field_1024 = 0
                        else:
                            if not fish[arg1].field_768:
                                require totalShares > 0
                                require totalShares
                                if not 0 / totalShares:
                                    require arg1 < fish.length
                                    fish[arg1].field_1024 = 0
                                else:
                                    require 5 * 0 / totalShares / 0 / totalShares == 5
                                    require arg1 < fish.length
                                    fish[arg1].field_1024 = 5 * 0 / totalShares / 100
                            else:
                                require sub_886b0905 * fish[arg1].field_768 / fish[arg1].field_768 == sub_886b0905
                                require totalShares > 0
                                require totalShares
                                if not sub_886b0905 * fish[arg1].field_768 / totalShares:
                                    require arg1 < fish.length
                                    fish[arg1].field_1024 = 0
                                else:
                                    require 5 * sub_886b0905 * fish[arg1].field_768 / totalShares / sub_886b0905 * fish[arg1].field_768 / totalShares == 5
                                    require arg1 < fish.length
                                    fish[arg1].field_1024 = 5 * sub_886b0905 * fish[arg1].field_768 / totalShares / 100
                        fish[arg1].field_576 = uint64(block.timestamp)
                        fish[arg1].field_640 = uint64(block.timestamp)
                    emit FeedFish(0 / sub_886b0905 - msg.value + (5 * msg.value / 100), fish[arg1].field_1024, msg.value - (5 * msg.value / 100), arg1);
                else:
                    require (msg.value * totalShares) - (5 * msg.value / 100 * totalShares) / msg.value - (5 * msg.value / 100) == totalShares
                    require sub_886b0905 - msg.value + (5 * msg.value / 100) > 0
                    require sub_886b0905 - msg.value + (5 * msg.value / 100)
                    require ((msg.value * totalShares) - (5 * msg.value / 100 * totalShares) / sub_886b0905 - msg.value + (5 * msg.value / 100)) + totalShares >= totalShares
                    totalShares += (msg.value * totalShares) - (5 * msg.value / 100 * totalShares) / sub_886b0905 - msg.value + (5 * msg.value / 100)
                    require arg1 < fish.length
                    require ((msg.value * totalShares) - (5 * msg.value / 100 * totalShares) / sub_886b0905 - msg.value + (5 * msg.value / 100)) + fish[arg1].field_768 >= fish[arg1].field_768
                    require arg1 < fish.length
                    fish[arg1].field_768 += (msg.value * totalShares) - (5 * msg.value / 100 * totalShares) / sub_886b0905 - msg.value + (5 * msg.value / 100)
                    require msg.value - (5 * msg.value / 100) + fish[arg1].field_1280 >= fish[arg1].field_1280
                    require arg1 < fish.length
                    fish[arg1].field_1280 = msg.value - (5 * msg.value / 100) + fish[arg1].field_1280
                    require arg1 < fish.length
                    if msg.value - (5 * msg.value / 100) < fish[arg1].field_1024:
                        require msg.value - (5 * msg.value / 100) <= fish[arg1].field_1024
                        require arg1 < fish.length
                        fish[arg1].field_1024 = fish[arg1].field_1024 - msg.value + (5 * msg.value / 100)
                    else:
                        if 0 == totalShares:
                            require arg1 < fish.length
                            fish[arg1].field_1024 = 0
                        else:
                            if not fish[arg1].field_768:
                                require totalShares > 0
                                require totalShares
                                if not 0 / totalShares:
                                    require arg1 < fish.length
                                    fish[arg1].field_1024 = 0
                                else:
                                    require 5 * 0 / totalShares / 0 / totalShares == 5
                                    require arg1 < fish.length
                                    fish[arg1].field_1024 = 5 * 0 / totalShares / 100
                            else:
                                require sub_886b0905 * fish[arg1].field_768 / fish[arg1].field_768 == sub_886b0905
                                require totalShares > 0
                                require totalShares
                                if not sub_886b0905 * fish[arg1].field_768 / totalShares:
                                    require arg1 < fish.length
                                    fish[arg1].field_1024 = 0
                                else:
                                    require 5 * sub_886b0905 * fish[arg1].field_768 / totalShares / sub_886b0905 * fish[arg1].field_768 / totalShares == 5
                                    require arg1 < fish.length
                                    fish[arg1].field_1024 = 5 * sub_886b0905 * fish[arg1].field_768 / totalShares / 100
                        fish[arg1].field_576 = uint64(block.timestamp)
                        fish[arg1].field_640 = uint64(block.timestamp)
                    emit FeedFish((msg.value * totalShares) - (5 * msg.value / 100 * totalShares) / sub_886b0905 - msg.value + (5 * msg.value / 100), fish[arg1].field_1024, msg.value - (5 * msg.value / 100), arg1);
        else:
            require 5 * msg.value / msg.value == 5
            require 5 * msg.value / 100 <= msg.value
            require 5 * msg.value / 100 <= msg.value - (5 * msg.value / 100)
            require msg.value - (2 * 5 * msg.value / 100) + sub_886b0905 >= sub_886b0905
            require -5 * msg.value / 100 >= -2 * 5 * msg.value / 100
            sub_886b0905 = -(5 * msg.value / 100) + msg.value + sub_886b0905
            require (5 * msg.value / 100) + balanceMarketing >= balanceMarketing
            balanceMarketing += 5 * msg.value / 100
            if 0 == totalShares:
                require msg.value - (2 * 5 * msg.value / 100) + totalShares >= totalShares
                totalShares = msg.value - (2 * 5 * msg.value / 100) + totalShares
                require arg1 < fish.length
                require msg.value - (2 * 5 * msg.value / 100) + fish[arg1].field_768 >= fish[arg1].field_768
                require arg1 < fish.length
                fish[arg1].field_768 = msg.value - (2 * 5 * msg.value / 100) + fish[arg1].field_768
                require msg.value - (2 * 5 * msg.value / 100) + fish[arg1].field_1280 >= fish[arg1].field_1280
                require arg1 < fish.length
                fish[arg1].field_1280 = msg.value - (2 * 5 * msg.value / 100) + fish[arg1].field_1280
                require arg1 < fish.length
                if msg.value - (2 * 5 * msg.value / 100) < fish[arg1].field_1024:
                    require msg.value - (2 * 5 * msg.value / 100) <= fish[arg1].field_1024
                    require arg1 < fish.length
                    fish[arg1].field_1024 = fish[arg1].field_1024 - msg.value + (2 * 5 * msg.value / 100)
                else:
                    if 0 == totalShares:
                        require arg1 < fish.length
                        fish[arg1].field_1024 = 0
                    else:
                        if not fish[arg1].field_768:
                            require totalShares > 0
                            require totalShares
                            if not 0 / totalShares:
                                require arg1 < fish.length
                                fish[arg1].field_1024 = 0
                            else:
                                require 5 * 0 / totalShares / 0 / totalShares == 5
                                require arg1 < fish.length
                                fish[arg1].field_1024 = 5 * 0 / totalShares / 100
                        else:
                            require sub_886b0905 * fish[arg1].field_768 / fish[arg1].field_768 == sub_886b0905
                            require totalShares > 0
                            require totalShares
                            if not sub_886b0905 * fish[arg1].field_768 / totalShares:
                                require arg1 < fish.length
                                fish[arg1].field_1024 = 0
                            else:
                                require 5 * sub_886b0905 * fish[arg1].field_768 / totalShares / sub_886b0905 * fish[arg1].field_768 / totalShares == 5
                                require arg1 < fish.length
                                fish[arg1].field_1024 = 5 * sub_886b0905 * fish[arg1].field_768 / totalShares / 100
                    fish[arg1].field_576 = uint64(block.timestamp)
                    fish[arg1].field_640 = uint64(block.timestamp)
                emit FeedFish(msg.value - (2 * 5 * msg.value / 100), fish[arg1].field_1024, msg.value - (2 * 5 * msg.value / 100), arg1);
            else:
                require msg.value - (2 * 5 * msg.value / 100) <= sub_886b0905
                if not msg.value - (2 * 5 * msg.value / 100):
                    require sub_886b0905 - msg.value + (2 * 5 * msg.value / 100) > 0
                    require sub_886b0905 - msg.value + (2 * 5 * msg.value / 100)
                    require (0 / sub_886b0905 - msg.value + (2 * 5 * msg.value / 100)) + totalShares >= totalShares
                    totalShares += 0 / sub_886b0905 - msg.value + (2 * 5 * msg.value / 100)
                    require arg1 < fish.length
                    require (0 / sub_886b0905 - msg.value + (2 * 5 * msg.value / 100)) + fish[arg1].field_768 >= fish[arg1].field_768
                    require arg1 < fish.length
                    fish[arg1].field_768 += 0 / sub_886b0905 - msg.value + (2 * 5 * msg.value / 100)
                    require msg.value - (2 * 5 * msg.value / 100) + fish[arg1].field_1280 >= fish[arg1].field_1280
                    require arg1 < fish.length
                    fish[arg1].field_1280 = msg.value - (2 * 5 * msg.value / 100) + fish[arg1].field_1280
                    require arg1 < fish.length
                    if msg.value - (2 * 5 * msg.value / 100) < fish[arg1].field_1024:
                        require msg.value - (2 * 5 * msg.value / 100) <= fish[arg1].field_1024
                        require arg1 < fish.length
                        fish[arg1].field_1024 = fish[arg1].field_1024 - msg.value + (2 * 5 * msg.value / 100)
                    else:
                        if 0 == totalShares:
                            require arg1 < fish.length
                            fish[arg1].field_1024 = 0
                        else:
                            if not fish[arg1].field_768:
                                require totalShares > 0
                                require totalShares
                                if not 0 / totalShares:
                                    require arg1 < fish.length
                                    fish[arg1].field_1024 = 0
                                else:
                                    require 5 * 0 / totalShares / 0 / totalShares == 5
                                    require arg1 < fish.length
                                    fish[arg1].field_1024 = 5 * 0 / totalShares / 100
                            else:
                                require sub_886b0905 * fish[arg1].field_768 / fish[arg1].field_768 == sub_886b0905
                                require totalShares > 0
                                require totalShares
                                if not sub_886b0905 * fish[arg1].field_768 / totalShares:
                                    require arg1 < fish.length
                                    fish[arg1].field_1024 = 0
                                else:
                                    require 5 * sub_886b0905 * fish[arg1].field_768 / totalShares / sub_886b0905 * fish[arg1].field_768 / totalShares == 5
                                    require arg1 < fish.length
                                    fish[arg1].field_1024 = 5 * sub_886b0905 * fish[arg1].field_768 / totalShares / 100
                        fish[arg1].field_576 = uint64(block.timestamp)
                        fish[arg1].field_640 = uint64(block.timestamp)
                    emit FeedFish(0 / sub_886b0905 - msg.value + (2 * 5 * msg.value / 100), fish[arg1].field_1024, msg.value - (2 * 5 * msg.value / 100), arg1);
                else:
                    require (msg.value * totalShares) - (2 * 5 * msg.value / 100 * totalShares) / msg.value - (2 * 5 * msg.value / 100) == totalShares
                    require sub_886b0905 - msg.value + (2 * 5 * msg.value / 100) > 0
                    require sub_886b0905 - msg.value + (2 * 5 * msg.value / 100)
                    require ((msg.value * totalShares) - (2 * 5 * msg.value / 100 * totalShares) / sub_886b0905 - msg.value + (2 * 5 * msg.value / 100)) + totalShares >= totalShares
                    totalShares += (msg.value * totalShares) - (2 * 5 * msg.value / 100 * totalShares) / sub_886b0905 - msg.value + (2 * 5 * msg.value / 100)
                    require arg1 < fish.length
                    require ((msg.value * totalShares) - (2 * 5 * msg.value / 100 * totalShares) / sub_886b0905 - msg.value + (2 * 5 * msg.value / 100)) + fish[arg1].field_768 >= fish[arg1].field_768
                    require arg1 < fish.length
                    fish[arg1].field_768 += (msg.value * totalShares) - (2 * 5 * msg.value / 100 * totalShares) / sub_886b0905 - msg.value + (2 * 5 * msg.value / 100)
                    require msg.value - (2 * 5 * msg.value / 100) + fish[arg1].field_1280 >= fish[arg1].field_1280
                    require arg1 < fish.length
                    fish[arg1].field_1280 = msg.value - (2 * 5 * msg.value / 100) + fish[arg1].field_1280
                    require arg1 < fish.length
                    if msg.value - (2 * 5 * msg.value / 100) < fish[arg1].field_1024:
                        require msg.value - (2 * 5 * msg.value / 100) <= fish[arg1].field_1024
                        require arg1 < fish.length
                        fish[arg1].field_1024 = fish[arg1].field_1024 - msg.value + (2 * 5 * msg.value / 100)
                    else:
                        if 0 == totalShares:
                            require arg1 < fish.length
                            fish[arg1].field_1024 = 0
                        else:
                            if not fish[arg1].field_768:
                                require totalShares > 0
                                require totalShares
                                if not 0 / totalShares:
                                    require arg1 < fish.length
                                    fish[arg1].field_1024 = 0
                                else:
                                    require 5 * 0 / totalShares / 0 / totalShares == 5
                                    require arg1 < fish.length
                                    fish[arg1].field_1024 = 5 * 0 / totalShares / 100
                            else:
                                require sub_886b0905 * fish[arg1].field_768 / fish[arg1].field_768 == sub_886b0905
                                require totalShares > 0
                                require totalShares
                                if not sub_886b0905 * fish[arg1].field_768 / totalShares:
                                    require arg1 < fish.length
                                    fish[arg1].field_1024 = 0
                                else:
                                    require 5 * sub_886b0905 * fish[arg1].field_768 / totalShares / sub_886b0905 * fish[arg1].field_768 / totalShares == 5
                                    require arg1 < fish.length
                                    fish[arg1].field_1024 = 5 * sub_886b0905 * fish[arg1].field_768 / totalShares / 100
                        fish[arg1].field_576 = uint64(block.timestamp)
                        fish[arg1].field_640 = uint64(block.timestamp)
                    emit FeedFish((msg.value * totalShares) - (2 * 5 * msg.value / 100 * totalShares) / sub_886b0905 - msg.value + (2 * 5 * msg.value / 100), fish[arg1].field_1024, msg.value - (2 * 5 * msg.value / 100), arg1);
    return 1
}



}
