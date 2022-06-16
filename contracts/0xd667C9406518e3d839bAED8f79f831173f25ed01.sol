contract main {




// =====================  Runtime code  =====================


address stor0;
uint256 stor1;
uint256 sub_8b1674c3;
mapping of uint256 stor3;
array of struct gameEntry;
address stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;
uint8 stor10;

function getMaxAmountToBet() {
    return sub_8b1674c3
}

function getGameEntry(uint256 arg1) {
    require arg1 < gameEntry.length
    return gameEntry[arg1].field_0, 
           gameEntry[arg1].field_256,
           gameEntry[arg1].field_512,
           gameEntry[arg1].field_768,
           gameEntry[arg1].field_1024,
           bool(gameEntry[arg1].field_1280)
}

function sub_8b1674c3(?) {
    return sub_8b1674c3
}

function getGameCount() {
    return gameEntry.length
}

function Kill() {
    require stor0 == msg.sender
    emit Status(string arg1, address arg2, uint256 arg3, bool arg4):
                128,
                address(msg.sender),
                eth.balance(this.address),
                1,
                64,
                'Contract was killed, contract ba',
                'lance will be send to the owner!',
    selfdestruct(stor0)
}

function _fallback() payable {
    revert
}

function depositFunds() payable {
    require stor0 == msg.sender
}

function setMaxAmountToBet(uint256 arg1) {
    require stor0 == msg.sender
    sub_8b1674c3 = arg1
    return sub_8b1674c3
}

function withdrawFunds(uint256 arg1) {
    require stor0 == msg.sender
    require arg1 <= eth.balance(this.address)
    call stor0 with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if ext_call.success:
        emit Status(Array(len=25, data='User withdraw some money!'), address(msg.sender), arg1, 1);
}

function Play() payable {
    require msg.value <= sub_8b1674c3
    if block.timestamp % 4:
        emit Status(string arg1, address arg2, uint256 arg3, bool arg4):
                    128,
                    address(msg.sender),
                    msg.value,
                    0,
                    17,
                    'Sorry, you loose!',
        stor5 = msg.sender
        stor6 = block.number
        stor7 = block.timestamp
        stor8 = msg.value
        stor9 = 0
        stor10 = 0
    else:
        if eth.balance(this.address) >= msg.value * stor1 + 100 / 100:
            emit Status(Array(len=25, data='Congratulations, you win!'), address(msg.sender), (100 * msg.value) + (stor1 * msg.value) / 100, 1);
            stor3[address(msg.sender)] = (100 * msg.value) + (stor1 * msg.value) / 100
            stor3[address(msg.sender)] = 0
            call msg.sender with:
               value stor3[address(msg.sender)] wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            stor5 = msg.sender
            stor6 = block.number
            stor7 = block.timestamp
            stor8 = msg.value
            stor9 = (100 * msg.value) + (stor1 * msg.value) / 100
        else:
            stor3[address(msg.sender)] = eth.balance(this.address)
            stor3[address(msg.sender)] = 0
            call msg.sender with:
               value stor3[address(msg.sender)] wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit Status(Array(len=98, data='Congratulations, you win! Sorry,', ' we didn't have enought money, w', 'e will deposit everything we hav', 'e!'), address(msg.sender), msg.value, 1);
            stor5 = msg.sender
            stor6 = block.number
            stor7 = block.timestamp
            stor8 = msg.value
            stor9 = eth.balance(this.address)
        stor10 = 1
    gameEntry.length++
    gameEntry[gameEntry.length].field_0 = stor5
    gameEntry[gameEntry.length].field_256 = stor6
    gameEntry[gameEntry.length].field_512 = stor7
    gameEntry[gameEntry.length].field_768 = stor8
    gameEntry[gameEntry.length].field_1024 = stor9
    gameEntry[gameEntry.length].field_1280 = uint8(bool(stor10))
}



}
