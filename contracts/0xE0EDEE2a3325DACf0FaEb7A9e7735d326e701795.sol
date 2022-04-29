contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = msg.sender
    return code.data[59 len 856]
}



// =====================  Runtime code  =====================


address stor0;
address winnerAddress;
array of address entrants;
mapping of uint8 stor3;

function winner() {
    return winnerAddress
}

function entrants(uint256 arg1) {
    require arg1 < entrants.length
    return address(entrants[arg1])
}

function _fallback() payable {
    revert
}

function random(uint256 arg1) {
    require arg1
    return (block.hash(block.number - 1) * block.timestamp % arg1)
}

function getTicket() {
    require not winnerAddress
    require not stor3[address(msg.sender)]
    entrants.length++
    if not entrants.length <= entrants.length + 1:
        idx = entrants.length + 1
        while entrants.length > idx:
            uint256(entrants[idx]) = 0
            idx = idx + 1
            continue 
    address(entrants[entrants.length]) = msg.sender
    stor3[address(msg.sender)] = 1
}

function draw() {
    if stor0 != msg.sender:
        if 0x5e1d178fd65534060c61283b1abfe070e87513fd != msg.sender:
            if 0xa4eafeb533d4111a1fe3a8b323c468976ac2323 != msg.sender:
                require msg.sender == 0x5b098b00621eda6a96b7a476220661ad265f083f
    require not winnerAddress
    require entrants.length
    require block.hash(block.number - 1) * block.timestamp % entrants.length < entrants.length
    winnerAddress = address(entrants[block.hash(block.number - 1) * block.timestamp % entrants.length])
}



}
