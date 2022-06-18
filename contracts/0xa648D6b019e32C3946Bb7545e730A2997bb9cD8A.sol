contract main {




// =====================  Runtime code  =====================


address sub_6a54298fAddress;
address foundationAddress;
uint256 sub_1f6e7c0f;
mapping of struct proposals;

function sub_1f6e7c0f(?) {
    return sub_1f6e7c0f
}

function lookProposal(uint256 arg1) {
    require calldata.size - 4 >= 32
    return proposals[arg1].field_0, 
           proposals[arg1].field_256,
           bool(proposals[arg1].field_416),
           proposals[arg1].field_512,
           proposals[arg1].field_768,
           proposals[arg1].field_1024,
           proposals[arg1].field_1280
}

function sub_6a54298f(?) {
    return sub_6a54298fAddress
}

function Foundation() {
    return foundationAddress
}

function Proposals(uint256 arg1) {
    require calldata.size - 4 >= 32
    return proposals[arg1].field_0, 
           proposals[arg1].field_256,
           bool(proposals[arg1].field_416),
           proposals[arg1].field_512,
           proposals[arg1].field_768,
           proposals[arg1].field_1024,
           proposals[arg1].field_1280
}

function _fallback() payable {
    revert
}

function proposal(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if foundationAddress != msg.sender:
        require msg.sender == sub_6a54298fAddress
    require sub_1f6e7c0f + 1 >= sub_1f6e7c0f
    sub_1f6e7c0f++
    proposals[stor2].field_0 = sub_1f6e7c0f
    proposals[stor2].field_256 = arg1
    proposals[stor2].field_416 = 0
    proposals[stor2].field_512 = arg2
    proposals[stor2].field_768 = arg3
    proposals[stor2].field_1024 = 0
    proposals[stor2].field_1280 = 0
    return 0
}

function refuse(uint256 arg1) {
    require calldata.size - 4 >= 32
    if foundationAddress != msg.sender:
        require msg.sender == sub_6a54298fAddress
    require not proposals[arg1].field_416
    if proposals[arg1].field_1280:
        require not proposals[arg1].field_1024
    if foundationAddress != msg.sender:
        if msg.sender == sub_6a54298fAddress:
            if not proposals[arg1].field_1024:
                proposals[arg1].field_416 = 1
                proposals[arg1].field_1024 = 2
                proposals[arg1].field_256 = proposals[arg1].field_256
                proposals[arg1].field_416 = Mask(96, 0, bool(proposals[arg1].field_416))
                proposals[arg1].field_512 = proposals[arg1].field_512
    else:
        if not proposals[arg1].field_1280:
            proposals[arg1].field_416 = 1
            proposals[arg1].field_1280 = 2
            proposals[arg1].field_256 = proposals[arg1].field_256
            proposals[arg1].field_416 = Mask(96, 0, bool(proposals[arg1].field_416))
            proposals[arg1].field_512 = proposals[arg1].field_512
        else:
            if msg.sender == sub_6a54298fAddress:
                if not proposals[arg1].field_1024:
                    proposals[arg1].field_416 = 1
                    proposals[arg1].field_1024 = 2
                    proposals[arg1].field_256 = proposals[arg1].field_256
                    proposals[arg1].field_416 = Mask(96, 0, bool(proposals[arg1].field_416))
                    proposals[arg1].field_512 = proposals[arg1].field_512
    return 1
}

function approval(uint256 arg1) {
    require calldata.size - 4 >= 32
    if foundationAddress != msg.sender:
        require msg.sender == sub_6a54298fAddress
    require not proposals[arg1].field_416
    if msg.sender == foundationAddress:
        if not proposals[arg1].field_1280:
            proposals[arg1].field_1280 = 1
            proposals[arg1].field_256 = proposals[arg1].field_256
            proposals[arg1].field_416 = Mask(96, 0, bool(proposals[arg1].field_416))
            proposals[arg1].field_512 = proposals[arg1].field_512
    if msg.sender == sub_6a54298fAddress:
        if not proposals[arg1].field_1024:
            proposals[arg1].field_1024 = 1
            proposals[arg1].field_256 = proposals[arg1].field_256
            proposals[arg1].field_416 = Mask(96, 0, bool(proposals[arg1].field_416))
            proposals[arg1].field_512 = proposals[arg1].field_512
    if proposals[arg1].field_1024 == 1:
        if proposals[arg1].field_1280 == 1:
            proposals[arg1].field_416 = 1
            proposals[arg1].field_256 = proposals[arg1].field_256
            proposals[arg1].field_416 = Mask(96, 0, bool(proposals[arg1].field_416))
            proposals[arg1].field_512 = proposals[arg1].field_512
            if proposals[arg1].field_768:
                require proposals[arg1].field_768
                require 10^18 * proposals[arg1].field_768 / proposals[arg1].field_768 == 10^18
            require ext_code.size(proposals[arg1].field_512)
            call proposals[arg1].field_512.0xa9059cbb with:
                 gas gas_remaining wei
                args proposals[arg1].field_256, 10^18 * proposals[arg1].field_768
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
    return 1
}



}
