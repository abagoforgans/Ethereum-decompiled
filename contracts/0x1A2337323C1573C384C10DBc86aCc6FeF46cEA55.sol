contract main {


// =======================  Init code  ======================


address stor0;
mapping of uint256 stor2;
uint256 stor3;
uint256 stor4;

function _fallback() payable {
    stor3 = 9999
    stor4 = 2300
    stor0 = 0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475
    stor2[tx.origin] = 10000
    return code.data[98 len 3285]
}



// =====================  Runtime code  =====================


#
#  - generateRandom()
#
mapping of uint256 balance;
uint256 randomNumber;

function getRandom() {
    return randomNumber
}

function randomNumber() {
    return randomNumber
}

function getBalance(address arg1) {
    return balance[address(arg1)]
}

function _fallback() payable {
    revert 
}

function __callback(bytes32 arg1, string arg2, bytes arg3) {
  stop
}

function addCoin(uint256 arg1) {
    balance[address(msg.sender)] += arg1
    return 1
}

function sendCoin(address arg1, uint256 arg2) {
    if balance[address(msg.sender)] < arg2:
        return 0
    balance[address(msg.sender)] -= arg2
    balance[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function getBalanceInEth(address arg1) {
    require ext_code.size(0x26e158334113bfd5ca452265cb82a18dedd4e45f)
    delegate 0x26e158334113bfd5ca452265cb82a18dedd4e45f.0x96e4ee3d with:
         gas gas_remaining - 50 wei
        args balance[address(arg1)], 2
    require delegate.return_code
    return delegate.return_data[0]
}

function __callback(bytes32 arg1, string arg2) {
    mem[96] = arg2.length
    mem[128 len arg2.length] = arg2[all]
    mem[64] = ceil32(arg2.length) + 160
    mem[ceil32(arg2.length) + 128] = 0
    idx = 0
    s = 0
    while idx < arg2.length:
        require idx < arg2.length
        require idx < arg2.length
        if Mask(8, 248, mem[idx + 128]) >= 0x3000000000000000000000000000000000000000000000000000000000000000:
            if Mask(8, 248, mem[idx + 128]) <= 0x3900000000000000000000000000000000000000000000000000000000000000:
                require idx < arg2.length
                idx = idx + 1
                s = (10 * s) + mem[idx + 128 len 1] - 48
                continue 
        idx = idx + 1
        s = s
        continue 
    randomNumber = s
    emit RandomGenerated(s);
}



}
