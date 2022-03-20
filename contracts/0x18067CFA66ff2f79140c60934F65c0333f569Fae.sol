contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;

function _fallback() payable {
    stor0 = 0
    stor1 = 0
    return code.data[26 len 265]
}



// =====================  Runtime code  =====================


uint256 sub_276b86a9;
uint256 sub_12174d09;

function sub_12174d09(?) payable {
    return sub_12174d09
}

function sub_276b86a9(?) payable {
    return sub_276b86a9
}

function enter() payable {
    sub_276b86a9 = sha3(call.data[0 len calldata.size])
    sub_12174d09 = sha3('0x052057669945015867370976298141', '78840555435550336603229475022101', '0101719896')
}

function _fallback() payable {
    sub_276b86a9 = sha3(call.data[0 len calldata.size])
    sub_12174d09 = sha3('0x052057669945015867370976298141', '78840555435550336603229475022101', '0101719896')
}



}
