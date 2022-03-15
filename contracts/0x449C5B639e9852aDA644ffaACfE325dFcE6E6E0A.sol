contract main {


// =======================  Init code  ======================


array of uint256 stor1;
uint256 stor2;

function _fallback() payable {
    stor1.length = 1
    if not stor1.length <= 1:
        idx = 1
        while stor1.length > idx:
            stor1[idx] = 0
            idx = idx + 1
            continue 
    require 0 < stor1.length
    stor1 = msg.sender or Mask(96, 160, stor1)
    stor2 = msg.sender or Mask(96, 160, stor2)
    return code.data[161 len 1339]
}



// =====================  Runtime code  =====================


const sendCoinFrom(address arg1, uint256 arg2, address arg3) = 0


mapping of uint256 coinBalance;
array of uint256 stor1;
address stor2;
uint256 stor2;

function coinBalance() payable {
    return coinBalance[address(msg.sender)]
}

function _fallback() payable {
  stop
}

function numMinters() payable {
    if address(stor2) != msg.sender:
        return 0
    return stor1.length
}

function changeOwner(address arg1) payable {
    if msg.sender == address(stor2):
        uint256(stor2) = arg1 or Mask(96, 160, uint256(stor2))
}

function sub_543ad305(?) payable {
    if address(stor2) != msg.sender:
        return 0
    require arg1 < stor1.length
    return address(stor[code.data[1307 len 32] + arg1])
}

function sendCoin(uint256 arg1, address arg2) payable {
    if coinBalance[address(msg.sender)] < arg1:
        return 0
    coinBalance[address(msg.sender)] -= arg1
    coinBalance[arg2] += arg1
    emit CoinTransfer(msg.sender, address(arg2), arg1);
    return 1
}

function coinBalanceOf(address arg1) payable {
    idx = 0
    while idx < stor1.length:
        mem[0] = 1
        if address(stor[code.data[1307 len 32] + idx]) != msg.sender:
            idx = idx + 1
            continue 
        return coinBalance[address(arg1)]
    return 0
}

function mintCoin(uint256 arg1, address arg2) payable {
    idx = 0
    while idx < stor1.length:
        mem[0] = 1
        if msg.sender == address(stor[code.data[1307 len 32] + idx]):
            mem[0] = arg2
            mem[32] = 0
            coinBalance[address(arg2)] += arg1
            mem[96] = arg2
            mem[128] = arg1
            emit 0xfe00432c: address(arg2), arg1
        idx = idx + 1
        continue 
}

function addMinter(address arg1) payable {
    if msg.sender == address(stor2):
        stor1.length++
        if not stor1.length <= stor1.length + 1:
            idx = stor1.length + code.data[1307 len 32] + 1
            while code.data[1307 len 32] + stor1.length > idx:
                uint256(stor[idx]) = 0
                idx = idx + 1
                continue 
        require stor1.length < stor1.length
        stor1[stor1.length] = arg1 or Mask(96, 160, stor1[stor1.length])
}

function removeMinter(address arg1) payable {
    if msg.sender == address(stor2):
        idx = 0
        s = 0
        while idx < stor1.length:
            mem[0] = 1
            if address(stor[code.data[1307 len 32] + idx]) == arg1:
                if idx < stor1.length - 1:
                    require idx + 1 < stor1.length
                    require idx < stor1.length
                    mem[0] = 1
                    address(stor[code.data[1307 len 32] + idx]) = address(stor[idx + code.data[1307 len 32] + 1])
                idx = idx + 1
                s = 1
                continue 
            if s:
                if idx < stor1.length - 1:
                    require idx + 1 < stor1.length
                    require idx < stor1.length
                    mem[0] = 1
                    address(stor[code.data[1307 len 32] + idx]) = address(stor[idx + code.data[1307 len 32] + 1])
            idx = idx + 1
            s = s
            continue 
        if s:
            stor1.length--
            if not stor1.length <= stor1.length - 1:
                idx = stor1.length - 1
                while stor1.length > idx:
                    stor1[idx] = 0
                    idx = idx + 1
                    continue 
}



}
