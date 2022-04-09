contract main {


// =======================  Init code  ======================


const _fallback = code.data[28 len 406]




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function abort() {
    emit Aborted(msg.sender);
}

function mintAllBonuses() {
    emit BonusesAllMinted(msg.sender);
}

function withdrawFundsAndStartToken() {
    emit FundsWithdrawnAndTokenStareted(msg.sender);
}



}
