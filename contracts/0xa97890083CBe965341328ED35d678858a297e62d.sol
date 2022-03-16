contract main {


// =======================  Init code  ======================


const _fallback = code.data[18 len 1022]




// =====================  Runtime code  =====================


const getBlockNumber = block.number


address stor0;
uint256 stor0;
array of struct stor1;

function kill() payable {
    if address(stor0) != msg.sender:
    selfdestruct(address(stor0))
}

function _fallback() payable {
  stop
}

function greet() payable {
    if stor1.length:
        mem[160] = uint256(stor1.field_0)
        idx = 160
        s = 0
        while stor1.length + 128 > idx:
            mem[idx + 32] = stor1[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
    return Array(len=stor1.length, data=mem[160 len stor1.length])
}

function setGreeting(string arg1) payable {
    mem[128 len arg1.length] = arg1[all]
    stor1.length = arg1.length
    if not arg1.length:
        idx = 0
        while stor1.length + 31 / 32 > idx:
            stor1[idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while arg1.length + 128 > idx:
            stor1[s].field_0 = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, arg1.length + 31) >> 5
        while stor1.length + 31 / 32 > idx:
            stor1[idx].field_0 = 0
            idx = idx + 1
            continue 
}

function Greeter(string arg1) payable {
    mem[128 len arg1.length] = arg1[all]
    uint256(stor0) = msg.sender or Mask(96, 160, uint256(stor0))
    stor1.length = arg1.length
    if not arg1.length:
        idx = 0
        while stor1.length + 31 / 32 > idx:
            stor1[idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while arg1.length + 128 > idx:
            stor1[s].field_0 = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, arg1.length + 31) >> 5
        while stor1.length + 31 / 32 > idx:
            stor1[idx].field_0 = 0
            idx = idx + 1
            continue 
}



}
