contract main {




// =====================  Runtime code  =====================


address owner;
address ratingContractAddress;
uint256 stor2;
mapping of struct secret;
mapping of uint256 participantSigns;

function getSecret(address arg1) {
    return secret[msg.sender][address(arg1)].field_0
}

function participantSigns(address arg1, address arg2) {
    return participantSigns[arg1][arg2]
}

function owner() {
    return owner
}

function swaps(address arg1, address arg2) {
    return secret[arg1][arg2].field_0, 
           Mask(160, 96, secret[arg1][arg2].field_256),
           secret[arg1][arg2].field_512,
           secret[arg1][arg2].field_768
}

function ratingContractAddress() {
    return ratingContractAddress
}

function getBalance(address arg1) {
    return secret[address(arg1)][msg.sender].field_768
}

function _fallback() payable {
    revert
}

function testnetWithdrawn(uint256 arg1) {
    require msg.sender == owner
    call owner with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function createSwap(bytes20 arg1, address arg2) payable {
    require msg.value > 0
    require not secret[msg.sender][address(arg2)].field_768
    secret[msg.sender][address(arg2)].field_0 = 0
    secret[msg.sender][address(arg2)].field_256 = Mask(160, 96, arg1) >> 96
    secret[msg.sender][address(arg2)].field_512 = block.timestamp
    secret[msg.sender][address(arg2)].field_768 = msg.value
    emit CreateSwap(block.timestamp);
}

function refund(address arg1) {
    require 0 < secret[msg.sender][address(arg1)].field_768
    require stor2 + secret[msg.sender][address(arg1)].field_512 >= secret[msg.sender][address(arg1)].field_512
    require stor2 + secret[msg.sender][address(arg1)].field_512 < block.timestamp
    call msg.sender with:
       value secret[msg.sender][address(arg1)].field_768 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    secret[address(msg.sender)][address(arg1)].field_0 = 0
    secret[address(msg.sender)][address(arg1)].field_256 = 0
    secret[address(msg.sender)][address(arg1)].field_512 = 0
    secret[address(msg.sender)][address(arg1)].field_768 = 0
    participantSigns[address(msg.sender)][address(arg1)] = 0
    emit Refund()
}

function withdraw(bytes32 arg1, address arg2) {
    hash = ripemd160hash(arg1) 
    if not ripemd160hash.result:
        revert with ext_call.return_data[0 len return_data.size]
    require Mask(160, 96, secret[address(arg2)][msg.sender].field_256) == address(hash)
    require 0 < secret[address(arg2)][msg.sender].field_768
    require stor2 + secret[address(arg2)][msg.sender].field_512 >= secret[address(arg2)][msg.sender].field_512
    require stor2 + secret[address(arg2)][msg.sender].field_512 > block.timestamp
    call msg.sender with:
       value secret[address(arg2)][msg.sender].field_768 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    secret[address(arg2)][msg.sender].field_768 = 0
    secret[address(arg2)][msg.sender].field_0 = arg1
    emit Withdraw(arg1, msg.sender, secret[address(arg2)][msg.sender].field_768);
}



}
