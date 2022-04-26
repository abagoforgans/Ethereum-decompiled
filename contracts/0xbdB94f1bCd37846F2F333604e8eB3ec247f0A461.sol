contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
uint256 stor2;

function _fallback() {
    require code.data[1096 len 20]
    require code.data[1116 len 32] >= block.timestamp + (48 * 24 * 3600)
    stor0 = msg.sender
    stor1 = code.data[1096 len 20]
    stor2 = code.data[1116 len 32]
    return code.data[150 len 934]
}



// =====================  Runtime code  =====================


const hardCap = 16318 * 10^18

const MIN_CONTRIBUTION = 10^17

const MAX_CONTRIBUTION = 1000 * 10^18

const TWO_DAYS = (48 * 24 * 3600)


address owner;
address multisigAddress;
uint256 endTimestamp;
uint256 totalRaised;

function multisig() {
    return multisigAddress
}

function owner() {
    return owner
}

function endTimestamp() {
    return endTimestamp
}

function totalRaised() {
    return totalRaised
}

function withdrawStuck() {
    require owner == msg.sender
    call multisigAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function _fallback() payable {
    require totalRaised < 16318 * 10^18
    require block.timestamp <= endTimestamp
    require msg.value >= 10^17
    require msg.value <= 1000 * 10^18
    require msg.value + totalRaised >= totalRaised
    totalRaised += msg.value
    if msg.value + totalRaised <= 16318 * 10^18:
        call multisigAddress with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
    else:
        require 16318 * 10^18 <= totalRaised
        call msg.sender with:
           value totalRaised - 16318 * 10^18 wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        require totalRaised - 16318 * 10^18 <= msg.value
        totalRaised = 16318 * 10^18
        call multisigAddress with:
           value msg.value + -totalRaised + 16318 * 10^18 wei
             gas 2300 * is_zero(value) wei
    require ext_call.success
}



}
