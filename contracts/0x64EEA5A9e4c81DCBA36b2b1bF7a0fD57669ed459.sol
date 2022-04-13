contract main {


// =======================  Init code  ======================


const _fallback = code.data[25 len 3555]




// =====================  Runtime code  =====================


const name = 'Cryoto Apartments Token'

const decimals = 8

const multisig = 0x577571f96671468f3c2b0a515f7e5a79b6b63d36

const symbol = 'CAPT'

const getPrice = 50

const PRICE = 50


uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;

function totalSupply() {
    return totalSupply
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function approve(address arg1, uint256 arg2) {
    if arg2:
        require not allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size >= 68
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size >= 100
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
}

function createTokens(address arg1) payable {
    require msg.value
    if not msg.value:
        if totalSupply >= totalSupply:
            if balanceOf[address(arg1)] >= balanceOf[address(arg1)]:
                call 0x577571f96671468f3c2b0a515f7e5a79b6b63d36 with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                if ext_call.success:
    else:
        if msg.value:
            if not 0 / msg.value:
                if totalSupply >= totalSupply:
                    if balanceOf[address(arg1)] >= balanceOf[address(arg1)]:
                        call 0x577571f96671468f3c2b0a515f7e5a79b6b63d36 with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        if ext_call.success:
    revert 
}

function _fallback() payable {
    require msg.value
    if not msg.value:
        if totalSupply >= totalSupply:
            if balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]:
                call 0x577571f96671468f3c2b0a515f7e5a79b6b63d36 with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                if ext_call.success:
    else:
        if msg.value:
            if not 0 / msg.value:
                if totalSupply >= totalSupply:
                    if balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]:
                        call 0x577571f96671468f3c2b0a515f7e5a79b6b63d36 with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        if ext_call.success:
    revert 
}



}
