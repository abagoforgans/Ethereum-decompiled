contract main {


// =======================  Init code  ======================


uint256 stor0;
array of uint256 stor1;
uint256 stor2;

function _fallback() payable {
    mem[96 len -850] = code.data[1063 len -850]
    mem[64] = -754
    stor0 = msg.sender or Mask(96, 160, stor0)
    stor1[] = Array(len=mem[mem[96] + 96], data=mem[mem[96] + 128 len mem[mem[96] + 96]])
    stor2 = 0
    return code.data[213 len 850]
}



// =====================  Runtime code  =====================


address stor0;
array of uint256 greet;
uint256 stor2;

function greet() payable {
    return greet[0 len greet.length]
}

function kill() payable {
    if stor0 != msg.sender:
    selfdestruct(stor0)
}

function _fallback() payable {
  stop
}

function setGreeting(string arg1) payable {
    require msg.sender == stor0
    greet[] = Array(len=arg1.length, data=arg1[all])
}

function sub_49749d15(?) payable {
    if stor0 != msg.sender:
    call msg.sender with:
       value arg1 wei
         gas 0 wei
    require ext_call.success
    stor2++
    revert 
}

function whoami() payable {
    if stor0 != msg.sender:
        mem[256] = mem[283 len 5]
        return Array(len=5, data=mem[256])
    mem[256] = mem[286 len 2]
    return Array(len=2, data=mem[256])
}



}
