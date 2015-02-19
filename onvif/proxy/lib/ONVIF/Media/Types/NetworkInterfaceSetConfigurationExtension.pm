package ONVIF::Media::Types::NetworkInterfaceSetConfigurationExtension;
use strict;
use warnings;


__PACKAGE__->_set_element_form_qualified(1);

sub get_xmlns { 'http://www.onvif.org/ver10/schema' };

our $XML_ATTRIBUTE_CLASS;
undef $XML_ATTRIBUTE_CLASS;

sub __get_attr_class {
    return $XML_ATTRIBUTE_CLASS;
}

use Class::Std::Fast::Storable constructor => 'none';
use base qw(SOAP::WSDL::XSD::Typelib::ComplexType);

Class::Std::initialize();

{ # BLOCK to scope variables

my %Dot3_of :ATTR(:get<Dot3>);
my %Dot11_of :ATTR(:get<Dot11>);
my %Extension_of :ATTR(:get<Extension>);

__PACKAGE__->_factory(
    [ qw(        Dot3
        Dot11
        Extension

    ) ],
    {
        'Dot3' => \%Dot3_of,
        'Dot11' => \%Dot11_of,
        'Extension' => \%Extension_of,
    },
    {
        'Dot3' => 'ONVIF::Media::Types::Dot3Configuration',
        'Dot11' => 'ONVIF::Media::Types::Dot11Configuration',
        'Extension' => 'ONVIF::Media::Types::NetworkInterfaceSetConfigurationExtension2',
    },
    {

        'Dot3' => 'Dot3',
        'Dot11' => 'Dot11',
        'Extension' => 'Extension',
    }
);

} # end BLOCK








1;


=pod

=head1 NAME

ONVIF::Media::Types::NetworkInterfaceSetConfigurationExtension

=head1 DESCRIPTION

Perl data type class for the XML Schema defined complexType
NetworkInterfaceSetConfigurationExtension from the namespace http://www.onvif.org/ver10/schema.






=head2 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * Dot3


=item * Dot11


=item * Extension




=back


=head1 METHODS

=head2 new

Constructor. The following data structure may be passed to new():

 { # ONVIF::Media::Types::NetworkInterfaceSetConfigurationExtension
   Dot3 =>  { # ONVIF::Media::Types::Dot3Configuration
   },
   Dot11 =>  { # ONVIF::Media::Types::Dot11Configuration
     SSID => $some_value, # Dot11SSIDType
     Mode => $some_value, # Dot11StationMode
     Alias => $some_value, # Name
     Priority => $some_value, # NetworkInterfaceConfigPriority
     Security =>  { # ONVIF::Media::Types::Dot11SecurityConfiguration
       Mode => $some_value, # Dot11SecurityMode
       Algorithm => $some_value, # Dot11Cipher
       PSK =>  { # ONVIF::Media::Types::Dot11PSKSet
         Key => $some_value, # Dot11PSK
         Passphrase => $some_value, # Dot11PSKPassphrase
         Extension =>  { # ONVIF::Media::Types::Dot11PSKSetExtension
         },
       },
       Dot1X => $some_value, # ReferenceToken
       Extension =>  { # ONVIF::Media::Types::Dot11SecurityConfigurationExtension
       },
     },
   },
   Extension =>  { # ONVIF::Media::Types::NetworkInterfaceSetConfigurationExtension2
   },
 },




=head1 AUTHOR

Generated by SOAP::WSDL

=cut

