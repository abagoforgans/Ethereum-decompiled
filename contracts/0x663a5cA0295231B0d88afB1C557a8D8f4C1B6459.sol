contract main {


// =======================  Init code  ======================


#
#  - _fallback()
#


// =====================  Runtime code  =====================


#
#  - __callback(bytes32 arg1, string arg2)
#  - __callback(bytes32 arg1, string arg2, bytes arg3)
#  - startNextRound()
#  - donate()
#
const maxFeePercentage = 10

const oraclizeMinCallbackGas = 210000

const oraclizeMinCallbackGasPrice = 2 * 10^10

const retainBalance = 10^16


address owner;
address stor1;
uint256 stor2;
array of uint256 stor3;
address beneficiaryAddress;
array of address donors;
uint8 state;
uint256 startTimestamp;
uint256 endTimestamp;
uint256 maxDonors;
uint256 duration;
uint256 donation;
uint256 fee;
uint256 donationSum;
uint256 numDonors;
uint256 nextRoundMaxDonors;
uint256 nextRoundDuration;
uint256 nextRoundDonation;
uint256 nextRoundFee;
uint256 oraclizeCallbackGas;

function duration() {
    return duration
}

function maxDonors() {
    return maxDonors
}

function beneficiary() {
    return beneficiaryAddress
}

function donors(uint256 arg1) {
    require arg1 < donors.length
    return donors[arg1]
}

function oraclizeCallbackGas() {
    return oraclizeCallbackGas
}

function nextRoundDonation() {
    return nextRoundDonation
}

function owner() {
    return owner
}

function donation() {
    return donation
}

function nextRoundMaxDonors() {
    return nextRoundMaxDonors
}

function numDonors() {
    return numDonors
}

function endTimestamp() {
    return endTimestamp
}

function state() {
    require state <= 1
    return state
}

function nextRoundFee() {
    return nextRoundFee
}

function nextRoundDuration() {
    return nextRoundDuration
}

function fee() {
    return fee
}

function donationSum() {
    return donationSum
}

function startTimestamp() {
    return startTimestamp
}

function kill() {
    require owner == msg.sender
    selfdestruct(owner)
}

function _fallback() payable {
    revert
}

function deposit() payable {
    require owner == msg.sender
}

function setNextRoundDuration(uint256 arg1) {
    require owner == msg.sender
    nextRoundDuration = arg1
}

function setNextRoundMaxDonors(uint256 arg1) {
    require owner == msg.sender
    nextRoundMaxDonors = arg1
}

function setContractOwner(address arg1) {
    require owner == msg.sender
    owner = arg1
    emit ContractOwnershipTransferred(arg1);
}

function setOraclizeCallbackGas(uint256 arg1) {
    require owner == msg.sender
    require arg1 >= 210000
    oraclizeCallbackGas = arg1
}

function setNextRoundFee(uint256 arg1) {
    require owner == msg.sender
    require arg1 <= nextRoundDonation / 10
    nextRoundFee = arg1
}

function setNextRoundDonation(uint256 arg1) {
    require owner == msg.sender
    nextRoundDonation = arg1
    if nextRoundFee > arg1 / 10:
        nextRoundFee = nextRoundDonation / 10
}

function withdraw() {
    require owner == msg.sender
    require eth.balance(this.address) > 10^16
    call owner with:
       value eth.balance(this.address) - 10^16 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function setOraclizeCallbackGasPrice(uint256 arg1) {
    require owner == msg.sender
    require arg1 >= 2 * 10^10
    if not stor1:
        if ext_code.size(0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed) > 0:
            stor1 = 0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed
            bool(stor3.length) = 0
            stor3.length.field_1 = 11
            stor3.length.field_8 = 'eth_mainnet' / 256
            idx = 0
            while stor3.length + 31 / 32 > idx:
                stor3[idx].field_0 = 0
                idx = idx + 1
                continue 
        else:
            if ext_code.size(0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1) > 0:
                stor1 = 0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1
                bool(stor3.length) = 0
                stor3.length.field_1 = 12
                stor3.length.field_8 = 'eth_ropsten3' / 256
                idx = 0
                while stor3.length + 31 / 32 > idx:
                    stor3[idx].field_0 = 0
                    idx = idx + 1
                    continue 
            else:
                if ext_code.size(0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e) > 0:
                    stor1 = 0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e
                    bool(stor3.length) = 0
                    stor3.length.field_1 = 9
                    stor3.length.field_8 = 'eth_kovan' / 256
                    idx = 0
                    while stor3.length + 31 / 32 > idx:
                        stor3[idx].field_0 = 0
                        idx = idx + 1
                        continue 
                else:
                    if ext_code.size(0x146500cfd35b22e4a392fe0adc06de1a1368ed48) <= 0:
                        if ext_code.size(0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475) > 0:
                            stor1 = 0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475
                        else:
                            if ext_code.size(0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf) > 0:
                                stor1 = 0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf
                            else:
                                if ext_code.size(0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa) > 0:
                                    stor1 = 0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa
                    else:
                        stor1 = 0x146500cfd35b22e4a392fe0adc06de1a1368ed48
                        bool(stor3.length) = 0
                        stor3.length.field_1 = 11
                        stor3.length.field_8 = 'eth_rinkeby' / 256
                        idx = 0
                        while stor3.length + 31 / 32 > idx:
                            stor3[idx].field_0 = 0
                            idx = idx + 1
                            continue 
        require ext_code.size(stor1)
    else:
        if not ext_code.size(stor1):
            if ext_code.size(0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed) > 0:
                stor1 = 0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed
                bool(stor3.length) = 0
                stor3.length.field_1 = 11
                stor3.length.field_8 = 'eth_mainnet' / 256
                idx = 0
                while stor3.length + 31 / 32 > idx:
                    stor3[idx].field_0 = 0
                    idx = idx + 1
                    continue 
            else:
                if ext_code.size(0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1) > 0:
                    stor1 = 0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1
                    bool(stor3.length) = 0
                    stor3.length.field_1 = 12
                    stor3.length.field_8 = 'eth_ropsten3' / 256
                    idx = 0
                    while stor3.length + 31 / 32 > idx:
                        stor3[idx].field_0 = 0
                        idx = idx + 1
                        continue 
                else:
                    if ext_code.size(0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e) > 0:
                        stor1 = 0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e
                        bool(stor3.length) = 0
                        stor3.length.field_1 = 9
                        stor3.length.field_8 = 'eth_kovan' / 256
                        idx = 0
                        while stor3.length + 31 / 32 > idx:
                            stor3[idx].field_0 = 0
                            idx = idx + 1
                            continue 
                    else:
                        if ext_code.size(0x146500cfd35b22e4a392fe0adc06de1a1368ed48) <= 0:
                            if ext_code.size(0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475) > 0:
                                stor1 = 0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475
                            else:
                                if ext_code.size(0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf) > 0:
                                    stor1 = 0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf
                                else:
                                    if ext_code.size(0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa) > 0:
                                        stor1 = 0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa
                        else:
                            stor1 = 0x146500cfd35b22e4a392fe0adc06de1a1368ed48
                            bool(stor3.length) = 0
                            stor3.length.field_1 = 11
                            stor3.length.field_8 = 'eth_rinkeby' / 256
                            idx = 0
                            while stor3.length + 31 / 32 > idx:
                                stor3[idx].field_0 = 0
                                idx = idx + 1
                                continue 
            require ext_code.size(stor1)
    call stor1.getAddress() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    stor2 = ext_call.return_data[12 len 20] or Mask(96, 160, stor2)
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).setCustomGasPrice(uint256 rg1) with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
}



}
