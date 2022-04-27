contract main {


// =======================  Init code  ======================


uint256 stor0;
address stor1;
uint256 stor2;
address stor3;

function _fallback() {
    stor1 = msg.sender
    stor0 = 0
    stor2 = 10^14
    create contract with 0 wei
                    code: code.data[3551 len 4179], 10^9, 'You_Got_A_Message', 'MSG'
    require create.new_address
    stor3 = address(create.new_address)
    return code.data[325 len 3226]
}



// =====================  Runtime code  =====================


const getBalance = eth.balance(this.address)

const getBlock = block.number


uint256 sub_24af2347;
address creatorAddress;
uint256 min_payment;
address coinAddress;
mapping of struct sub_5e9d5c4b;
mapping of uint256 stor5;

function creator() {
    return creatorAddress
}

function coin() {
    return coinAddress
}

function sub_24af2347(?) {
    return sub_24af2347
}

function sub_59fc1a6e(?) {
    return sub_5e9d5c4b[arg1][arg2].field_0, 
           sub_5e9d5c4b[arg1][arg2].field_256,
           sub_5e9d5c4b[arg1][arg2].field_512,
           sub_5e9d5c4b[arg1][arg2].field_768
}

function sub_5e9d5c4b(?) {
    return sub_5e9d5c4b[address(msg.sender)][arg1].field_0, 
           sub_5e9d5c4b[address(msg.sender)][arg1].field_256,
           sub_5e9d5c4b[address(msg.sender)][arg1].field_512,
           sub_5e9d5c4b[address(msg.sender)][arg1].field_768
}

function sub_77a890cd(?) {
    return min_payment
}

function min_payment() {
    return min_payment
}

function _fallback() payable {
    revert
}

function sub_84db2071(?) {
    if msg.sender == creatorAddress:
        min_payment = arg1
}

function getMoney() {
    if msg.sender == creatorAddress:
        call creatorAddress with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
}

function sub_2060b3f5(?) payable {
    if msg.value >= min_payment:
        sub_5e9d5c4b[address(msg.sender)][stor5[address(msg.sender)]].field_0 = msg.sender
        sub_5e9d5c4b[address(msg.sender)][stor5[address(msg.sender)]].field_256 = arg1
        sub_5e9d5c4b[address(msg.sender)][stor5[address(msg.sender)]].field_512 = arg2
        sub_5e9d5c4b[address(msg.sender)][stor5[address(msg.sender)]].field_768 = block.number
        sub_5e9d5c4b[address(arg1)][stor5[address(arg1)]].field_0 = sub_5e9d5c4b[address(msg.sender)][stor5[address(msg.sender)]].field_0
        sub_5e9d5c4b[address(arg1)][stor5[address(arg1)]].field_256 = sub_5e9d5c4b[address(msg.sender)][stor5[address(msg.sender)]].field_256
        sub_5e9d5c4b[address(arg1)][stor5[address(arg1)]].field_512 = sub_5e9d5c4b[address(msg.sender)][stor5[address(msg.sender)]].field_512
        sub_5e9d5c4b[address(arg1)][stor5[address(arg1)]].field_768 = sub_5e9d5c4b[address(msg.sender)][stor5[address(msg.sender)]].field_768
        stor5[address(msg.sender)]++
        stor5[address(arg1)]++
        sub_24af2347++
        if arg3 == 1:
            require ext_code.size(coinAddress)
            call coinAddress.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args address(arg1), 1
            require ext_call.success
}



}
