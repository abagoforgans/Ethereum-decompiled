contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
uint256 stor2;

function _fallback() payable {
    stor1 = 2122 * 10^12
    stor2 = 5
    require not msg.value
    stor0 = msg.sender
    return code.data[110 len 3381]
}



// =====================  Runtime code  =====================


const share3 = 5

const payto1 = 0x4df46817dc0e8dd69d7da51b0e2347f5efdb9671

const payto3 = 0x574c4db1e399859753a09d65b6c5586429663701

const share1 = 800

const payto2 = 0xd58f863de3bb877f24996291cc3c659b3550d58e

const share2 = 100

const token = 0x8b0e368af9d27252121205b1db24d9e48f62b236


address owner;
uint256 sellPrice;
uint256 minLot;

function sellPrice() {
    return sellPrice
}

function owner() {
    return owner
}

function minLot() {
    return minLot
}

function SetPrice(uint256 arg1) {
    require msg.sender == owner
    sellPrice = 10^12 * arg1
}

function SetMinLot(uint256 arg1) {
    require msg.sender == owner
    require arg1 >= 5
    minLot = arg1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function WithdrawEther(uint256 arg1) {
    require msg.sender == owner
    if eth.balance(this.address) < arg1:
        return 0
    call owner with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    return bool(ext_call.success)
}

function WithdrawToken(uint256 arg1) {
    require msg.sender == owner
    require ext_code.size(0x8b0e368af9d27252121205b1db24d9e48f62b236)
    call 0x8b0e368af9d27252121205b1db24d9e48f62b236.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args owner, arg1
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function BuyToken() payable {
    require sellPrice
    require ext_code.size(0x8b0e368af9d27252121205b1db24d9e48f62b236)
    call 0x8b0e368af9d27252121205b1db24d9e48f62b236.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    if msg.value > ext_call.return_data[0] * sellPrice:
        if msg.value - (ext_call.return_data[0] * sellPrice) > 0:
            call msg.sender with:
               value msg.value - (ext_call.return_data[0] * sellPrice) wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
    if msg.value / sellPrice > minLot:
        require ext_code.size(0x8b0e368af9d27252121205b1db24d9e48f62b236)
        call 0x8b0e368af9d27252121205b1db24d9e48f62b236.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args msg.sender, msg.value / sellPrice
        require ext_call.success
        require ext_call.return_data[0]
        call 0x4df46817dc0e8dd69d7da51b0e2347f5efdb9671 with:
           value 800 * msg.value / 1000 wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        call 0xd58f863de3bb877f24996291cc3c659b3550d58e with:
           value 100 * msg.value / 1000 wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        call 0x574c4db1e399859753a09d65b6c5586429663701 with:
           value 5 * msg.value / 1000 wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        emit GotTokens(msg.value, msg.value / sellPrice, msg.sender);
}

function _fallback() payable {
    require sellPrice
    require ext_code.size(0x8b0e368af9d27252121205b1db24d9e48f62b236)
    call 0x8b0e368af9d27252121205b1db24d9e48f62b236.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    if msg.value > ext_call.return_data[0] * sellPrice:
        if msg.value - (ext_call.return_data[0] * sellPrice) > 0:
            call msg.sender with:
               value msg.value - (ext_call.return_data[0] * sellPrice) wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
    if msg.value / sellPrice > minLot:
        require ext_code.size(0x8b0e368af9d27252121205b1db24d9e48f62b236)
        call 0x8b0e368af9d27252121205b1db24d9e48f62b236.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args msg.sender, msg.value / sellPrice
        require ext_call.success
        require ext_call.return_data[0]
        call 0x4df46817dc0e8dd69d7da51b0e2347f5efdb9671 with:
           value 800 * msg.value / 1000 wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        call 0xd58f863de3bb877f24996291cc3c659b3550d58e with:
           value 100 * msg.value / 1000 wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        call 0x574c4db1e399859753a09d65b6c5586429663701 with:
           value 5 * msg.value / 1000 wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        emit GotTokens(msg.value, msg.value / sellPrice, msg.sender);
}



}
