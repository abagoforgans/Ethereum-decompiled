contract main {


// =======================  Init code  ======================


function _fallback() payable {
    delegate 0xf97fd11a882caba3ffe85d5ab002d3ee38ceaa2f.0x21ce24d4 with:
         gas gas_remaining - 50 wei
        args 0, msg.sender
    require delegate.return_code
    return code.data[123 len 1266]
}



// =====================  Runtime code  =====================


const sub_0cd40fea(?) = 1

const sub_7a9e5410(?) = 12

const sub_825db5f7(?) = 0


function _fallback() payable {
  stop
}

function iterateStart() payable {
    delegate 0xf97fd11a882caba3ffe85d5ab002d3ee38ceaa2f.0x685a1f3c with:
         gas gas_remaining - 50 wei
        args 0
    require delegate.return_code
    return delegate.return_data[0]
}

function iterateNext(uint256 arg1) payable {
    delegate 0xf97fd11a882caba3ffe85d5ab002d3ee38ceaa2f.0x685a1f3c with:
         gas gas_remaining - 50 wei
        args 0, arg1
    require delegate.return_code
    return delegate.return_data[0]
}

function contains(address arg1) payable {
    delegate 0xf97fd11a882caba3ffe85d5ab002d3ee38ceaa2f.0x7d65837a with:
         gas gas_remaining - 50 wei
        args 0, arg1
    require delegate.return_code
    return bool(delegate.return_data[0])
}

function iterateValid(uint256 arg1) payable {
    delegate 0xf97fd11a882caba3ffe85d5ab002d3ee38ceaa2f.0x33556e84 with:
         gas gas_remaining - 50 wei
        args 0, arg1
    require delegate.return_code
    return bool(delegate.return_data[0])
}

function iterateGet(uint256 arg1) payable {
    delegate 0xf97fd11a882caba3ffe85d5ab002d3ee38ceaa2f.0xf775b6b5 with:
         gas gas_remaining - 50 wei
        args 0, arg1
    require delegate.return_code
    return delegate.return_data[12 len 20]
}

function add(address arg1) payable {
    delegate 0xf97fd11a882caba3ffe85d5ab002d3ee38ceaa2f.0x7d65837a with:
         gas gas_remaining - 50 wei
        args 0, msg.sender
    require delegate.return_code
    require delegate.return_data[0]
    delegate 0xf97fd11a882caba3ffe85d5ab002d3ee38ceaa2f.0x21ce24d4 with:
         gas gas_remaining - 50 wei
        args 0, arg1
    require delegate.return_code
}

function remove(address arg1) payable {
    delegate 0xf97fd11a882caba3ffe85d5ab002d3ee38ceaa2f.0x7d65837a with:
         gas gas_remaining - 50 wei
        args 0, msg.sender
    require delegate.return_code
    require delegate.return_data[0]
    delegate 0xf97fd11a882caba3ffe85d5ab002d3ee38ceaa2f.0x89489a87 with:
         gas gas_remaining - 50 wei
        args 0, arg1
    require delegate.return_code
}



}
