contract main {


// =======================  Init code  ======================


const _fallback = code.data[19 len 273]




// =====================  Runtime code  =====================


mapping of uint256 sub_8f98eeda;
array of uint256 sub_404ebf6c;
uint256 sub_77ef5ed3;

function sub_404ebf6c(?) payable {
    require arg1 < sub_404ebf6c.length
    return sub_404ebf6c[arg1]
}

function sub_77ef5ed3(?) payable {
    return sub_77ef5ed3
}

function sub_8f98eeda(?) payable {
    return sub_8f98eeda[arg1]
}

function _fallback() payable {
  stop
}

function vote(bytes32 arg1) payable {
    if msg.value != 0:
        if sub_8f98eeda[arg1]:
            sub_8f98eeda[arg1] += msg.value
        else:
            sub_77ef5ed3++
            require sub_77ef5ed3 < sub_404ebf6c.length
            sub_404ebf6c[stor2] = arg1
            sub_8f98eeda[1] += msg.value
}



}
