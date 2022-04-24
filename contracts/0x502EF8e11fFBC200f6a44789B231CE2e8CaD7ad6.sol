contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() payable {
    stor0 = msg.sender
    require not msg.value
    return code.data[57 len 3794]
}



// =====================  Runtime code  =====================


const sub_6f426f66(?) = 0

const sub_dbed5096(?) = 0


address owner;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
address databaseAddress; offset 8
uint8 stor4; offset 160
uint128 stor4; offset 160
address libAddress;
uint256 icoStart;

function name() {
    return name[0 len name.length]
}

function libAddress() {
    return libAddress
}

function decimals() {
    return decimals
}

function isICO() {
    return bool(uint8(stor4.field_160))
}

function icoStart() {
    return icoStart
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function databaseAddress() {
    return databaseAddress
}

function sub_d7e666c1(?) {
    require owner == msg.sender
    databaseAddress = arg1
}

function changeLibAddress(address arg1) {
    require owner == msg.sender
    libAddress = arg1
}

function replaceOwner(address arg1) {
    require owner == msg.sender
    owner = arg1
    return 1
}

function sub_24d64167(?) {
    databaseAddress = arg1
    libAddress = arg2
    Mask(96, 0, stor4.field_160) = Mask(96, 0, arg3)
    if uint8(arg3):
        icoStart = block.number
}

function totalSupply() {
    require ext_code.size(databaseAddress)
    call databaseAddress.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    return ext_call.return_data[0]
}

function balanceOf(address arg1) {
    require ext_code.size(databaseAddress)
    call databaseAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    return ext_call.return_data[0]
}

function closeICO(bool arg1) {
    require owner == msg.sender
    require uint8(stor4.field_160)
    uint8(stor4.field_160) = 0
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function sub_be32fe05(?) {
    if block.number > 5042000:
        return 0
    if block.number > 5 * 10^6:
        if not arg1:
            return (1000 * 10^18 * arg1 / 10^18)
        if arg1:
            if 1000 * 10^18 * arg1 / arg1 == 1000 * 10^18:
                return (1000 * 10^18 * arg1 / 10^18)
    else:
        if icoStart + (5 * 3600) > icoStart:
            if icoStart + (5 * 3600) <= 5 * 10^6:
                if not arg1:
                    return (10000 * 10^18 * arg1 / 10^18)
                if arg1:
                    if 10000 * 10^18 * arg1 / arg1 == 10000 * 10^18:
                        return (10000 * 10^18 * arg1 / 10^18)
            else:
                if not arg1:
                    return (3000 * 10^18 * arg1 / 10^18)
                if arg1:
                    if 3000 * 10^18 * arg1 / arg1 == 3000 * 10^18:
                        return (3000 * 10^18 * arg1 / 10^18)
    revert
}

function transfer(address arg1, uint256 arg2) {
    require arg2 > 0
    require ext_code.size(databaseAddress)
    call databaseAddress.transfer(address rg1, address rg2, uint256 rg3, uint256 rg4) with:
         gas gas_remaining - 710 wei
        args msg.sender, address(arg1), arg2, 0
    if ext_code.size(arg1) <= 0:
    else:
        require ext_call.success
        require ext_call.return_data[0]
        require ext_code.size(arg1)
        call arg1.0x909670b6 with:
             gas gas_remaining - 710 wei
        require ext_call.success
        require ext_call.return_data[12 len 20] == this.address
        require ext_code.size(arg1)
        call arg1.receiveToken(address rg1, uint256 rg2, bytes rg3) with:
             gas gas_remaining - 710 wei
            args msg.sender, arg2, 96, 0
    require ext_call.success
    require ext_call.return_data[0]
    emit Transfer(arg2, msg.sender, arg1);
    emit TransferWithData('', msg.sender, arg1, arg2);
    return 1
}

function transfer(address arg1, uint256 arg2, bytes arg3) {
    require arg2 > 0
    require ext_code.size(databaseAddress)
    if ext_code.size(arg1) <= 0:
        call databaseAddress.transfer(address rg1, address rg2, uint256 rg3, uint256 rg4) with:
             gas gas_remaining - 710 wei
            args 0, uint32(msg.sender), address(arg1), arg2, 0
    else:
        call databaseAddress.transfer(address rg1, address rg2, uint256 rg3, uint256 rg4) with:
             gas gas_remaining - 710 wei
            args msg.sender, address(arg1), arg2, 0
        require ext_call.success
        require ext_call.return_data[0]
        require ext_code.size(arg1)
        call arg1.0x909670b6 with:
             gas gas_remaining - 710 wei
        require ext_call.success
        require ext_call.return_data[12 len 20] == this.address
        require ext_code.size(arg1)
        call arg1.receiveToken(address rg1, uint256 rg2, bytes rg3) with:
             gas gas_remaining - 710 wei
            args msg.sender, arg2, Array(len=arg3.length, data=arg3[all])
    require ext_call.success
    require ext_call.return_data[0]
    emit Transfer(arg2, msg.sender, arg1);
    emit TransferWithData(Array(len=arg3.length, data=arg3[all]), msg.sender, arg1, arg2);
    return 1
}

function _fallback() payable {
    require uint8(stor4.field_160)
    if block.number > 5042000:
        require 0 > uint8(10^decimals)
        require ext_code.size(databaseAddress)
        call databaseAddress.increase(address rg1, uint256 rg2) with:
             gas gas_remaining - 710 wei
            args msg.sender, 0
        require ext_call.success
        require ext_call.return_data[0]
        emit Mint(msg.sender, 0);
    else:
        if block.number > 5 * 10^6:
            if msg.value:
                require msg.value
                require 1000 * 10^18 * msg.value / msg.value == 1000 * 10^18
            require 1000 * 10^18 * msg.value / 10^18 > uint8(10^decimals)
            require ext_code.size(databaseAddress)
            call databaseAddress.increase(address rg1, uint256 rg2) with:
                 gas gas_remaining - 710 wei
                args msg.sender, 1000 * 10^18 * msg.value / 10^18
            require ext_call.success
            require ext_call.return_data[0]
            emit Mint(msg.sender, 1000 * 10^18 * msg.value / 10^18);
        else:
            require icoStart + (5 * 3600) > icoStart
            if icoStart + (5 * 3600) <= 5 * 10^6:
                if msg.value:
                    require msg.value
                    require 10000 * 10^18 * msg.value / msg.value == 10000 * 10^18
                require 10000 * 10^18 * msg.value / 10^18 > uint8(10^decimals)
                require ext_code.size(databaseAddress)
                call databaseAddress.increase(address rg1, uint256 rg2) with:
                     gas gas_remaining - 710 wei
                    args msg.sender, 10000 * 10^18 * msg.value / 10^18
                require ext_call.success
                require ext_call.return_data[0]
                emit Mint(msg.sender, 10000 * 10^18 * msg.value / 10^18);
            else:
                if msg.value:
                    require msg.value
                    require 3000 * 10^18 * msg.value / msg.value == 3000 * 10^18
                require 3000 * 10^18 * msg.value / 10^18 > uint8(10^decimals)
                require ext_code.size(databaseAddress)
                call databaseAddress.increase(address rg1, uint256 rg2) with:
                     gas gas_remaining - 710 wei
                    args msg.sender, 3000 * 10^18 * msg.value / 10^18
                require ext_call.success
                require ext_call.return_data[0]
                emit Mint(msg.sender, 3000 * 10^18 * msg.value / 10^18);
}



}
