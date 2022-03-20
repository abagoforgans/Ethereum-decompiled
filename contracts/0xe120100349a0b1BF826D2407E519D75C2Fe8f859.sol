contract main {


// =======================  Init code  ======================


const _fallback = code.data[18 len 552]




// =====================  Runtime code  =====================


array of uint256 stor0;

function tickets(uint256 arg1) payable {
    require arg1 < stor0.length
    return address(stor[code.data[520 len 32] + arg1])
}

function _fallback() payable {
  stop
}

function buyTicket() payable {
    require 0 == msg.value
    stor0.length++
    if not stor0.length <= stor0.length + 1:
        idx = stor0.length + 1
        while stor0.length > idx:
            stor0[idx] = 0
            idx = idx + 1
            continue 
    stor0[stor0.length] = msg.sender or Mask(96, 160, stor0[stor0.length])
    call 0x88a1e54971b31974b2be4d9c67546abbd0a3aa8e with:
       value msg.value / 40 wei
         gas 0 wei
    if stor0.length >= 5:
        require mulmod(block.timestamp, 0, 5) < stor0.length
        call address(stor[code.data[520 len 32] + mulmod(block.timestamp, 0, 5)]) with:
             gas 0 wei
        if 0 == mulmod(block.timestamp, 0, 150):
            require mulmod(block.timestamp, 0, 5) < stor0.length
            call address(stor[code.data[520 len 32] + mulmod(block.timestamp, 0, 5)]) with:
               value eth.balance(this.address) wei
                 gas 0 wei
        stor0.length = 0
        idx = code.data[520 len 32]
        while code.data[520 len 32] + stor0.length > idx:
            uint256(stor[idx]) = 0
            idx = idx + 1
            continue 
}



}
