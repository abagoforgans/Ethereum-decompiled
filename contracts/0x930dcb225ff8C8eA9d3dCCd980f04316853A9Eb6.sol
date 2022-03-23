contract main {


// =======================  Init code  ======================


address stor1;

function _fallback() payable {
    stor1 = 0xd837acd68e7dd0a0a9f03d72623d5ce5180e3bb8
    return code.data[56 len 684]
}



// =====================  Runtime code  =====================


address stor0;
uint256 stor0;
address stor1;
address lastWinnerAddress;
uint256 stor3;

function getLastWinner() payable {
    return lastWinnerAddress
}

function lastWinner() payable {
    return lastWinnerAddress
}

function kill() payable {
    if address(stor0) != msg.sender:
    selfdestruct(address(stor0))
}

function _fallback() payable {
  stop
}

function mortal() payable {
    uint256(stor0) = msg.sender or Mask(96, 160, uint256(stor0))
}

function placeWager() payable {
    if msg.value > 0:
        if msg.value < 51 * 10^15:
            idx = 0
            while idx < msg.value:
                stor3++
                if not stor3 <= stor3 + 1:
                    s = stor3 + code.data[652 len 32] + 1
                    while code.data[652 len 32] + stor3 > s:
                        uint256(stor[s]) = 0
                        s = s + 1
                        continue 
                require stor3 - 1 < stor3
                mem[0] = 3
                uint256(stor[code.data[652 len 32] + stor3 - 1]) = msg.sender or Mask(96, 160, uint256(stor[code.data[652 len 32] + stor3 - 1]))
                idx = idx + 1
                continue 
            if eth.balance(this.address) >= 601 * 10^15:
                require block.number % stor3 < stor3
                call stor1 with:
                   value 10^17 wei
                     gas 0 wei
                if ext_call.success:
                    call address(stor[code.data[652 len 32] + (block.number % stor3)]) with:
                       value 5 * 10^17 wei
                         gas 0 wei
                    lastWinnerAddress = address(stor[code.data[652 len 32] + (block.number % stor3)])
                    stor3 = 0
                    if not stor3 <= 0:
                        idx = code.data[652 len 32]
                        while code.data[652 len 32] + stor3 > idx:
                            uint256(stor[idx]) = 0
                            idx = idx + 1
                            continue 
}



}
