require 'elasticsearch'
require 'rspec'

describe "Elasticsearch Client" do
  let(:client) { Elasticsearch::Client.new log: true }
  subject { client.cluster.health }

  it 'can connect to the elasticsearch cluster' do
    expect(subject['cluster_name']).to eq('elasticsearch')
  end
end
