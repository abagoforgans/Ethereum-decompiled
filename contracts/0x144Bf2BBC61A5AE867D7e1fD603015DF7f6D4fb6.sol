contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[37 len 857]
}



// =====================  Runtime code  =====================


const getBlockNumber = block.number


address stor0;
uint256 stor1;
uint256 stor2;
array of uint256 greet;

function greet() payable {
    return greet[0 len greet.length]
}

function terminate() payable {
    if stor0 != msg.sender:
    selfdestruct(stor0)
}

function terminateAlt() payable {
    require stor0 == msg.sender
    selfdestruct(stor0)
}

function _fallback() payable {
  stop
}

function setGreeting(string arg1) payable {
    mem[128 len arg1.length] = arg1[all]
    greet.length = (2 * arg1.length) + 1
    if arg1.length + 128 <= 128:
        idx = 0
        while greet.length + 31 / 32 > idx:
            greet[idx] = 0
            idx = idx + 1
            continue 
    else:
        greet = mem[128]
        s = 1
        idx = 160
        while arg1.length + 128 > idx:
            greet[s] = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = (Mask(251, 0, arg1.length - 1) >> 5) + 1
        while greet.length + 31 / 32 > idx:
            greet[idx] = 0
            idx = idx + 1
            continue 
}

function Greeter(string arg1) payable {
    mem[128 len arg1.length] = arg1[all]
    stor1 = msg.value
    stor2 = gas_remaining
    greet.length = (2 * arg1.length) + 1
    if arg1.length + 128 <= 128:
        idx = 0xc2575a0e9e593c00f959f8c92f12db2869c3395a3b0502d05e2516446f71f85b
        while (greet.length + 31 / 32) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a5 > idx:
            stor[idx] = 0
            idx = idx + 1
            continue 
    else:
        greet = mem[128]
        s = 0xc2575a0e9e593c00f959f8c92f12db2869c3395a3b0502d05e2516446f71f85c
        idx = 160
        while arg1.length + 128 > idx:
            stor[s] = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = (Mask(251, 0, arg1.length - 1) >> 5) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a4
        while (greet.length + 31 / 32) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a5 > idx:
            stor[idx] = 0
            idx = idx + 1
            continue 
}



}
