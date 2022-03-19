contract main {


// =======================  Init code  ======================


const _fallback = code.data[18 len 875]




// =====================  Runtime code  =====================


const getBlockNumber = block.number


address stor0;
uint256 stor0;
array of uint256 greet;

function greet() payable {
    return greet[0 len greet.length]
}

function kill() payable {
    if address(stor0) != msg.sender:
    selfdestruct(address(stor0))
}

function _fallback() payable {
  stop
}

function setGreeting(string arg1) payable {
    mem[128 len arg1.length] = arg1[all]
    greet.length = (2 * arg1.length) + 1
    s = 0xb10e2d527612073b26eecdfd717e6a320cf44b4afac2b0732d9fcbe2b7fa0cf6
    idx = 128
    while arg1.length + 128 > idx:
        stor[s] = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = (Mask(251, 0, arg1.length + 31) >> 5) - 0x4ef1d2ad89edf8c4d91132028e8195cdf30bb4b5053d4f8cd260341d4805f30a
    while (greet.length + 31 / 32) - 0x4ef1d2ad89edf8c4d91132028e8195cdf30bb4b5053d4f8cd260341d4805f30a > idx:
        stor[idx] = 0
        idx = idx + 1
        continue 
}

function Greeter(string arg1) payable {
    mem[128 len arg1.length] = arg1[all]
    uint256(stor0) = msg.sender or Mask(96, 160, uint256(stor0))
    greet.length = (2 * arg1.length) + 1
    s = 0xb10e2d527612073b26eecdfd717e6a320cf44b4afac2b0732d9fcbe2b7fa0cf6
    idx = 128
    while arg1.length + 128 > idx:
        stor[s] = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = (Mask(251, 0, arg1.length + 31) >> 5) - 0x4ef1d2ad89edf8c4d91132028e8195cdf30bb4b5053d4f8cd260341d4805f30a
    while (greet.length + 31 / 32) - 0x4ef1d2ad89edf8c4d91132028e8195cdf30bb4b5053d4f8cd260341d4805f30a > idx:
        stor[idx] = 0
        idx = idx + 1
        continue 
}



}
