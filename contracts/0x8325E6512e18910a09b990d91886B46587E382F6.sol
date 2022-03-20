contract main {


// =======================  Init code  ======================


mapping of uint256 sub_88f0702b;
uint256 stor2;
uint256 stor3;

function sub_88f0702b(?) payable {
    return sub_88f0702b[address(msg.sender)]
}

function _fallback() payable {
  stop
}

function sub_0fb4b7cd(?) payable {
    return (stor3 / arg1)
}

function sub_3296e625(?) payable {
    return (100 / stor3 / arg1)
}

function sub_346bb3d9(?) payable {
    return (block.hash(arg1) % stor3)
}

function Roll(uint256 arg1) payable {
    if msg.value < stor2:
        if msg.value > 0:
            call msg.sender with:
               value msg.value wei
                 gas 0 wei
            return 0
        else:
            return 0
    if block.hash(block.number) % stor3 >= arg1:
        sub_88f0702b[address(msg.sender)] -= msg.value
        return 0
    call msg.sender with:
       value msg.value * stor3 / arg1 wei
         gas 0 wei
    sub_88f0702b[address(msg.sender)] += msg.value * stor3 / arg1
    return 1
}



// =====================  Runtime code  =====================




}
