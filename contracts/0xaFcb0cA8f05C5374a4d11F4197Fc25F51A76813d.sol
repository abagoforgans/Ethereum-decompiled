contract main {


// =======================  Init code  ======================


uint256 stor0;
bool stor2; offset 256
uint8 stor2;
uint8 stor2; offset 8
uint128 stor5; offset 160
uint256 stor5;

function _fallback() payable {
    uint8(stor2.field_0) = 10
    uint8(stor2.field_8) = 10
    stor2.field_256 % 1 = 0
    stor0 = msg.sender or Mask(96, 160, stor0)
    create contract with callvalue wei
                    code: code.data[2659 len 1250]
    uint256(stor5.field_0) = Mask(96, 0, stor5.field_160)
    emit 0x18b22f6a 
    return code.data[157 len 2502]
}



// =====================  Runtime code  =====================


address owner;
uint256 stor0;
uint256 collectedFees;
uint8 feePercentage;
uint8 sub_e3cc838c; offset 8
uint256 stor2; offset 8
uint256 sub_a07aea96;
array of address sub_4052c661;
uint128 stor5; offset 160
address currentAuctionAddress;
uint256 stor5;

function sub_4052c661(?) payable {
    require arg1 < sub_4052c661.length
    return address(sub_4052c661[arg1])
}

function currentAuction() payable {
    return currentAuctionAddress
}

function owner() payable {
    return address(owner)
}

function collectedFees() payable {
    return collectedFees
}

function feePercentage() payable {
    return feePercentage
}

function sub_a07aea96(?) payable {
    return sub_a07aea96
}

function sub_e3cc838c(?) payable {
    return sub_e3cc838c
}

function nextEtherForSale() payable {
    return (eth.balance(this.address) - collectedFees)
}

function setOwner(address arg1) payable {
    if msg.sender == address(owner):
        uint256(stor0) = arg1 or Mask(96, 160, uint256(stor0))
}

function setNextFeePercentage(uint8 arg1) payable {
    if msg.sender == address(owner):
        if arg1 <= 10:
            stor2 = Mask(248, 0, arg1)
}

function sendFees(address arg1) payable {
    if msg.sender == address(owner):
        if collectedFees != 0:
            call arg1 with:
               value collectedFees wei
                 gas 0 wei
            collectedFees = 0
}

function _fallback() payable {
    call currentAuctionAddress.hasEnded() with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    if ext_call.return_data[0]:
        call currentAuctionAddress.payout() with:
             gas gas_remaining - 25050 wei
        require ext_call.success
        feePercentage = sub_e3cc838c
        sub_4052c661.length++
        if not sub_4052c661.length <= sub_4052c661.length + 1:
            idx = sub_4052c661.length + 1
            while sub_4052c661.length > idx:
                uint256(sub_4052c661[idx]) = 0
                idx = idx + 1
                continue 
        address(sub_4052c661[sub_4052c661.length]) = currentAuctionAddress
        sub_a07aea96 = sub_4052c661.length + 1
        create contract with ('add', ('balance', 'address'), ('mul', -1, 'callvalue'), ('mul', -1, ('stor', ('name', 'collectedFees', 1)))) wei
                        code: code.data[1252 len 1250]
        uint256(stor5.field_0) = Mask(96, 0, stor5.field_160)
        emit 0x18b22f6a 
    call currentAuctionAddress.placeBid(address rg1, uint256 rg2) with:
         gas gas_remaining - 25050 wei
        args msg.sender, msg.value
    require ext_call.success
    if not ext_call.return_data[0]:
        call msg.sender with:
           value msg.value wei
             gas 0 wei
    else:
        collectedFees += msg.value / 100 * feePercentage
        emit 0x7e55dd91 
}



}
