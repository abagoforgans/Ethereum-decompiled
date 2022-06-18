contract main {




// =====================  Runtime code  =====================


const decimalsProxy(address arg1) = 0

const nameProxy(address arg1) = 'DO NOT USE - Disabled'

const totalSupplyProxy(address arg1) = 0

const allowanceProxy(address arg1, address arg2, address arg3) = 0

const symbolProxy(address arg1) = 'DEAD'

const balanceOfProxy(address arg1, address arg2) = 0


function finalizeUpgrade() {
  stop
}

function upgrade(address arg1) {
  stop
}

function _fallback() payable {
    revert
}

function pauseProxy(address arg1) {
    revert with 0, 'Token is disabled'
}

function pausedProxy(address arg1) {
    revert with 0, 'Token is disabled'
}

function unpauseProxy(address arg1) {
    revert with 0, 'Token is disabled'
}

function burnProxy(address arg1, uint256 arg2) {
    revert with 0, 'Token is disabled'
}

function mintProxy(address arg1, address arg2, uint256 arg3) {
    revert with 0, 'Token is disabled'
}

function approveProxy(address arg1, address arg2, uint256 arg3) {
    revert with 0, 'Token is disabled'
}

function transferProxy(address arg1, address arg2, uint256 arg3) {
    revert with 0, 'Token is disabled'
}

function burnFromProxy(address arg1, address arg2, uint256 arg3) {
    revert with 0, 'Token is disabled'
}

function changeMintingRecipientProxy(address arg1, address arg2) {
    revert with 0, 'Token is disabled'
}

function decreaseAllowanceProxy(address arg1, address arg2, uint256 arg3) {
    revert with 0, 'Token is disabled'
}

function increaseAllowanceProxy(address arg1, address arg2, uint256 arg3) {
    revert with 0, 'Token is disabled'
}

function transferFromProxy(address arg1, address arg2, address arg3, uint256 arg4) {
    revert with 0, 'Token is disabled'
}



}
