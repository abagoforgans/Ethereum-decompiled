contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = 10^18
    return code.data[33 len 1841]
}



// =====================  Runtime code  =====================


uint256 stor0;
array of address sub_23261794;
array of uint256 sub_49e79bcb;

function sub_23261794(?) payable {
    require arg1 < sub_23261794.length
    return address(sub_23261794[arg1])
}

function sub_49e79bcb(?) payable {
    return sub_49e79bcb[arg1][0 len sub_49e79bcb[arg1].length]
}

function fund() payable {
  stop
}

function _fallback() payable {
    idx = 0
    while idx < sub_23261794.length:
        mem[0] = 1
        require address(sub_23261794[idx]) != msg.sender
        idx = idx + 1
        continue 
    call msg.sender with:
       value stor0 wei
         gas 0 wei
    require ext_call.success
    sub_23261794.length++
    if not sub_23261794.length <= sub_23261794.length + 1:
        idx = sub_23261794.length + 1
        while sub_23261794.length > idx:
            uint256(sub_23261794[idx]) = 0
            idx = idx + 1
            continue 
    uint256(sub_23261794[sub_23261794.length]) = msg.sender or Mask(96, 160, uint256(sub_23261794[sub_23261794.length]))
    emit 0x43ae4cdf: msg.sender
}

function sub_7c98fabc(?) payable {
    idx = 0
    while idx < sub_23261794.length:
        mem[0] = 1
        require address(sub_23261794[idx]) != msg.sender
        idx = idx + 1
        continue 
    sub_49e79bcb[address(msg.sender)][] = Array(len=arg1.length, data=arg1[all])
    call msg.sender with:
       value stor0 wei
         gas 0 wei
    require ext_call.success
    sub_23261794.length++
    if not sub_23261794.length <= sub_23261794.length + 1:
        idx = sub_23261794.length + 1
        while sub_23261794.length > idx:
            uint256(sub_23261794[idx]) = 0
            idx = idx + 1
            continue 
    uint256(sub_23261794[sub_23261794.length]) = msg.sender or Mask(96, 160, uint256(sub_23261794[sub_23261794.length]))
    emit 0x739e31b7: msg.sender, Array(len=arg1.length, data=arg1[all])
}



}
