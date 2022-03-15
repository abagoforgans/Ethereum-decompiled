contract main {


// =======================  Init code  ======================


mapping of uint256 stor1;
address stor2;
uint256 stor2;
uint256 stor3;

function _fallback() payable {
    stor3 = 6 * 10^6
    uint256(stor2) = msg.sender or Mask(96, 160, uint256(stor2))
    stor1[address(stor2)] = stor3
    return code.data[165 len 1901]
}



// =====================  Runtime code  =====================


array of struct stor0;
mapping of uint256 coins;
address stor2;

function coins(address arg1) payable {
    return coins[arg1]
}

function coinBalanceOf(address arg1) payable {
    return coins[address(arg1)]
}

function coinBalance() payable {
    return coins[address(msg.sender)]
}

function _fallback() payable {
  stop
}

function sendCoin(address arg1, uint256 arg2) payable {
    if coins[address(msg.sender)] < arg2:
        return 0
    coins[address(msg.sender)] -= arg2
    coins[address(arg1)] += arg2
    emit CoinTransfer(msg.sender, address(arg1), arg2);
    return 1
}

function sub_5479f98b(?) payable {
    if coins[stor2] < 1:
        mem[320] = mem[345 len 7]
        return Array(len=39, data='Sorry, the faucet has entirely r', 'un dry.', mem[320])
    coins[stor2]--
    coins[address(msg.sender)]++
    mem[320] = mem[350 len 2]
    return Array(len=34, data='ayeAyeCoin love! One coin for yo', 'u!', mem[320])
}

function sub_0ecc3912(?) payable {
    if stor0.length:
        mem[160] = uint256(stor0.field_0)
        idx = 160
        s = 0
        while stor0.length + 128 > idx:
            mem[idx + 32] = stor0[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
    return Array(len=stor0.length, data=mem[160 len stor0.length])
}

function setInfo(string arg1) payable {
    mem[128 len arg1.length] = arg1[all]
    if msg.sender == stor2:
        stor0.length = arg1.length
        if not arg1.length:
            idx = 0
            while stor0.length + 31 / 32 > idx:
                stor0[idx].field_0 = 0
                idx = idx + 1
                continue 
        else:
            s = 0
            idx = 128
            while arg1.length + 128 > idx:
                stor0[s].field_0 = mem[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, arg1.length + 31) >> 5
            while stor0.length + 31 / 32 > idx:
                stor0[idx].field_0 = 0
                idx = idx + 1
                continue 
}



}
