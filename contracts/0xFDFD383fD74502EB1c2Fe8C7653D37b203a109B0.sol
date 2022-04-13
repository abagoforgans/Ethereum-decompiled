contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;
address stor5;
uint256 stor6;
uint256 stor7;
uint256 stor10;

function _fallback() payable {
    create contract with 0 wei
                    code: code.data[824 len 2551]
    require create.new_address
    stor1 = address(create.new_address)
    require not msg.value
    stor0 = msg.sender
    stor5 = 0x5743e6f77234bb55e49cca6793724dfba79ca270
    stor6 = 1000
    stor7 = 10^18
    stor2 = 417679 * 3600
    stor3 = 30
    stor4 = 7
    stor10 = 200
    return code.data[223 len 601]
}



// =====================  Runtime code  =====================


address owner;
address tokenAddress;

function owner() {
    return owner
}

function token() {
    return tokenAddress
}

function _fallback() payable {
  stop
}

function createTokens() payable {
  stop
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require arg1
    owner = arg1
}

function finishMinting() {
    require owner == msg.sender
    require ext_code.size(tokenAddress)
    call tokenAddress.0x7d64bcb4 with:
         gas gas_remaining - 710 wei
    require ext_call.success
}



}
